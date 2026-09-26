# flow.ps1 patches / sync-upstream / pr-branch：个人补丁清单、同步作者更新、给作者提 PR。
# 由 flow.ps1 dot-source；依赖 Common.ps1、Hooks.ps1、Status.ps1、Tasks.ps1。

$script:UpstreamRef = 'refs/remotes/upstream/develop'
$script:SchemaFile = 'packages/fushi_core/lib/src/database/database.dart'
$script:DatabaseDir = 'packages/fushi_core/lib/src/database/'

# ---- 个人补丁清单 ---------------------------------------------------------

# 清单固定取主 checkout（即 custom）里的那份；主 checkout 没有时退回本脚本所在仓库。
function Get-FlowPatchesFile {
    [OutputType([string])]
    param([pscustomobject]$Context)
    $main = Join-Path $Context.MainRoot 'docs\personal\PATCHES.md'
    if (Test-Path -LiteralPath $main) { return $main }
    return [System.IO.Path]::GetFullPath((Join-Path $script:PersonalRoot '..\..\docs\personal\PATCHES.md'))
}

# 读取「## 补丁条目」表：| 名称 | 类型 | 状态 | 同步冲突时 | 路径 |，路径列里每个模式用反引号包起来。
# 返回 { Entries, Warnings }；列数不对的行不猜测，只报警。
function Read-FlowPatches {
    [OutputType([pscustomobject])]
    param([pscustomobject]$Context)
    $file = Get-FlowPatchesFile $Context
    $entries = [System.Collections.Generic.List[pscustomobject]]::new()
    $warnings = [System.Collections.Generic.List[string]]::new()
    if (-not (Test-Path -LiteralPath $file)) { return [pscustomobject]@{ Entries = @(); Warnings = @("找不到 $file") } }
    $inSection = $false
    $lineNo = 0
    foreach ($line in [System.IO.File]::ReadAllLines($file)) {
        $lineNo++
        if ($line -match '^##\s') { $inSection = ($line -match '^##\s+补丁条目'); continue }
        if (-not $inSection -or $line -notmatch '^\|') { continue }
        $cells = @($line.Trim().Trim('|').Split('|') | ForEach-Object { $_.Trim() })
        if ($cells[0] -eq '名称' -or @($cells | Where-Object { $_ -notmatch '^:?-+:?$' }).Count -eq 0) { continue }
        if ($cells.Count -ne 5) {
            $warnings.Add("PATCHES.md 第 $lineNo 行有 $($cells.Count) 列（应为 5 列，单元格里不能写 |），已跳过：$($cells[0])")
            continue
        }
        $patterns = @([regex]::Matches($cells[4], '`([^`]+)`') | ForEach-Object { $_.Groups[1].Value })
        if ($patterns.Count -eq 0) { $warnings.Add("PATCHES.md 第 $lineNo 行「$($cells[0])」没有用反引号写出任何路径模式。") }
        $entries.Add([pscustomobject]@{ Name = $cells[0]; Type = $cells[1]; Status = $cells[2]; Policy = $cells[3]; Patterns = $patterns })
    }
    return [pscustomobject]@{ Entries = $entries.ToArray(); Warnings = $warnings.ToArray() }
}

function Get-FlowPatchEntryFor {
    [OutputType([pscustomobject])]
    param([string]$Path, [pscustomobject[]]$Entries)
    foreach ($entry in $Entries) {
        if (Test-FlowPathMatch $Path $entry.Patterns) { return $entry }
    }
    return $null
}

function Get-FlowPathArea {
    [OutputType([string])]
    param([string]$Path, [int]$Depth = 4)
    $parts = $Path.Split('/')
    if ($parts.Count -le 1) { return $Path }
    return (($parts[0..([Math]::Min($Depth, $parts.Count - 1) - 1)]) -join '/') + '/'
}

# custom 相对作者（两者的合并基点）改过的文件：这就是个人版比作者多出来的全部改动。
function Get-FlowPersonalFiles {
    [OutputType([string[]])]
    param([pscustomobject]$Context)
    if (-not (Test-FlowRef $Context $script:UpstreamRef)) { throw '找不到 upstream/develop，先 git fetch upstream。' }
    $base = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('merge-base', 'refs/heads/custom', $script:UpstreamRef))[0]
    return @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $base, 'refs/heads/custom'))
}

function Show-FlowPatches {
    [OutputType([void])]
    param([pscustomobject]$Context, [switch]$All)
    $patches = Read-FlowPatches $Context
    $files = @(Get-FlowPersonalFiles $Context)
    Write-Output "个人补丁清单：$(Get-FlowPatchesFile $Context)"
    $patches.Warnings | ForEach-Object { Write-Output "⚠ $_" }
    Write-Output "custom 相对上次同步时的作者版本共改动 $($files.Count) 个文件。"
    $covered = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
    Write-FlowSection '已登记的条目'
    foreach ($entry in $patches.Entries) {
        $hits = @($files | Where-Object { Test-FlowPathMatch $_ $entry.Patterns })
        foreach ($hit in $hits) { [void]$covered.Add($hit) }
        Write-Output ("  {0}  [{1}｜{2}｜同步冲突时：{3}]  {4} 个文件" -f $entry.Name, $entry.Type, $entry.Status, $entry.Policy, $hits.Count)
        $nonMarkdown = @($hits | Where-Object { $_ -notmatch '\.md$' })
        if ($entry.Type -eq '规则' -and $nonMarkdown.Count -gt 0) {
            Write-Output "      ⚠ 类型是「规则」，但覆盖了 $($nonMarkdown.Count) 个非 .md 文件（如 $($nonMarkdown[0])）。「规则」只对 .md 生效：同步时这些文件仍按代码冲突处理，建议拆成别的类型。"
        }
        if ($entry.Status -match '待退役' -and $hits.Count -gt 0) {
            Write-Output '      ⚠ 已被作者收录，但相对上次同步时的作者版本仍有改动：下次同步时核对个人重复实现能否退役。'
        }
    }
    $uncovered = @($files | Where-Object { -not $covered.Contains($_) })
    Write-FlowSection "未登记的个人改动（$($uncovered.Count) 个文件）"
    if ($All) {
        $uncovered | ForEach-Object { Write-Output "  $_" }
    }
    else {
        $uncovered | Group-Object { Get-FlowPathArea $_ } | Sort-Object Count -Descending | Select-Object -First 30 |
            ForEach-Object { Write-Output ("  {0,4}  {1}" -f $_.Count, $_.Name) }
        Write-Output '  （加 -All 列出全部文件。同步作者更新或做个人功能时，把碰到的改动补登进 PATCHES.md。）'
    }
}

# ---- sync-upstream --------------------------------------------------------

$script:ConflictGuidance = [ordered]@{
    '代码'       = '按技术规则解；拿不准就停下来问用户'
    '规则文件'   = '保留个人版，只吸收作者新增的技术事实（个人规则第 1 节）'
    '技术文档'   = '以作者版为基础，再叠加个人补充；拿不准问用户'
    'i18n 源'    = '逐个 key 解冲突，保留双方新增的 key；解完用 fushi/tool/i18n_sync.dart 核对，再 dart run slang 重新生成'
    '生成文件'   = '不手工解：先解完源文件，再重新生成（strings.g.dart 用 dart run slang，pubspec.lock 用 pub get）'
    'bug 登记'   = '用 tool/bug.dart check / renumber / reindex 处理编号，不手改索引'
}
# 输出顺序：最需要人判断的放前面。
$script:CategoryOrder = @('代码', '规则文件', '技术文档', 'i18n 源', '生成文件', 'bug 登记')

# 分类只看文件性质；登记在补丁清单里只作为附加提示，因为一个文件里常混有多个个人改动，
# 整文件套用某个条目的策略可能把条目之外的个人改动一起丢掉。
function Get-FlowConflictCategory {
    [OutputType([pscustomobject])]
    param([string]$Path, [pscustomobject[]]$Entries)
    $entry = Get-FlowPatchEntryFor $Path $Entries
    $category = if ($Path -match '^(CLAUDE|AGENTS)\.md$' -or ($entry -and $entry.Type -eq '规则' -and $Path -match '\.md$')) { '规则文件' }
    elseif ($Path -match '^docs/agent/|/(CLAUDE|AGENTS)\.md$') { '技术文档' }
    elseif ($Path -match '\.(g|freezed)\.dart$|(^|/)pubspec\.lock$') { '生成文件' }
    elseif ($Path -match '^fushi/lib/i18n/.*\.i18n\.json$') { 'i18n 源' }
    elseif ($Path -match '^docs/(BUGS\.md|bugs/)') { 'bug 登记' }
    else { '代码' }
    $hint = ''
    if ($entry -and $category -eq '代码') {
        $hint = "登记在补丁「$($entry.Name)」（$($entry.Status)；同步冲突时：$($entry.Policy)）。先看这个文件上的个人提交（git log --oneline <合并基点>..custom -- <文件>），确认都属于该条目才按条目策略处理；混有其他个人改动就问用户。"
    }
    return [pscustomobject]@{ Path = $Path; Category = $category; Guidance = $script:ConflictGuidance[$category]; Hint = $hint }
}

function Get-FlowSchemaVersion {
    [OutputType([int])]
    param([pscustomobject]$Context, [string]$Ref)
    $show = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('show', "${Ref}:$script:SchemaFile") -AllowFail
    if ($show.Code -ne 0) { return -1 }
    $match = [regex]::Match(($show.Lines -join "`n"), 'int\s+get\s+schemaVersion\s*=>\s*(\d+)')
    if (-not $match.Success) { return -1 }
    return [int]$match.Groups[1].Value
}

# 按类别分组输出文件列表；$Limit 为每组最多显示几个（0 表示全部）。
function Format-FlowCategorized {
    [OutputType([string[]])]
    param([pscustomobject[]]$Items, [int]$Limit)
    $lines = [System.Collections.Generic.List[string]]::new()
    foreach ($category in $script:CategoryOrder) {
        $group = @($Items | Where-Object { $_.Category -eq $category })
        if ($group.Count -eq 0) { continue }
        $lines.Add("  [$category（$($group.Count) 个）] $($script:ConflictGuidance[$category])")
        $shown = if ($Limit -gt 0) { @($group | Select-Object -First $Limit) } else { $group }
        foreach ($item in $shown) {
            $lines.Add("      $($item.Path)")
            if ($item.Hint) { $lines.Add("        ↳ $($item.Hint)") }
        }
        if ($shown.Count -lt $group.Count) { $lines.Add("      ……另有 $($group.Count - $shown.Count) 个（完整列表见交接单）") }
    }
    return $lines.ToArray()
}

# 同步分支名：sync-upstream-<作者提交>-<日期>，被放弃的旧分支占着名字时加 -2、-3……
function Get-FlowSyncTaskName {
    [OutputType([string])]
    param([pscustomobject]$Context, [string]$Short)
    $stem = "sync-upstream-$Short-$(Get-Date -Format 'yyyyMMdd')"
    $name = $stem
    for ($n = 2; $n -lt 100; $n++) {
        $taken = (Test-FlowRef $Context "refs/heads/codex/$name") -or
            (Test-Path -LiteralPath (Join-Path $Context.WorktreesDir $name)) -or
            (Test-Path -LiteralPath (Join-Path $Context.ClaimsDir "$name.json"))
        if (-not $taken) { return $name }
        $name = "$stem-$n"
    }
    throw "同步任务名 $stem 已被占用太多次，先用 flow cleanup 收尾旧的同步任务。"
}

function Invoke-FlowSyncUpstream {
    [OutputType([void])]
    param([pscustomobject]$Context, [string]$Agent)
    $fetch = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('fetch', '-q', 'upstream') -AllowFail
    if ($fetch.Code -ne 0) { throw "git fetch upstream 失败：$($fetch.Error)" }
    $target = Get-FlowRefSha $Context $script:UpstreamRef
    if (-not $target) { throw '找不到 upstream/develop。' }
    $short = $target.Substring(0, 10)
    $pending = Get-FlowCount $Context "refs/heads/custom..$target"
    if ($pending -eq 0) { Write-Output "custom 已包含作者最新的 upstream/develop（$short），无需同步。"; return }

    $worktreeBranches = @(Get-FlowWorktrees $Context | ForEach-Object { $_.Branch } | Where-Object { $_ })
    $syncClaims = @(Read-FlowClaims $Context | Where-Object { $_.Branch -like 'codex/sync-upstream-*' })
    $running = $syncClaims | Where-Object { $worktreeBranches -contains $_.Branch } | Select-Object -First 1
    if ($running) { throw "已有进行中的同步任务 $($running.Name)（$($running.Branch)）。先把它完成并采用，或确认放弃后按 S9 收尾，再开新的同步。" }
    foreach ($stale in $syncClaims) {
        Write-Output "⚠ 发现 worktree 已不存在的同步 claim $($stale.Name)：如确已放弃，用 flow cleanup 归档（C 项）。"
    }

    $patches = Read-FlowPatches $Context
    $entries = @($patches.Entries)
    $base = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('merge-base', 'refs/heads/custom', $target))[0]
    $authorFiles = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $base, $target))
    $personalFiles = [System.Collections.Generic.HashSet[string]]::new([string[]]@(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $base, 'refs/heads/custom')), [System.StringComparer]::Ordinal)
    $customSchema = Get-FlowSchemaVersion $Context 'refs/heads/custom'
    $upstreamSchema = Get-FlowSchemaVersion $Context $target

    $task = New-FlowTask $Context (Get-FlowSyncTaskName $Context $short) "同步作者 upstream/develop $short（$pending 个新提交）" $Agent
    $merge = Invoke-FlowGit -Dir $task.Path -Arguments @('merge', '--no-ff', '-m', "Merge upstream/develop $short into sync branch", $target) -AllowFail
    $conflicts = @(Get-FlowGitLines -Dir $task.Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--diff-filter=U'))

    $console = [System.Collections.Generic.List[string]]::new()
    $full = [System.Collections.Generic.List[string]]::new()
    function Add-Both([string]$Line) { $console.Add($Line); $full.Add($Line) }
    function Add-Split([string[]]$ConsoleLines, [string[]]$FullLines) { $ConsoleLines | ForEach-Object { $console.Add($_) }; $FullLines | ForEach-Object { $full.Add($_) } }

    Add-Both "同步作者 upstream/develop $short：作者有 $pending 个新提交，改了 $($authorFiles.Count) 个文件（合并基点 $($base.Substring(0, 10))）。"
    Add-Both "同步 worktree：$($task.Path)（分支 $($task.Branch)）"
    $patches.Warnings | ForEach-Object { Add-Both "⚠ $_" }
    if ($merge.Code -ne 0 -and $conflicts.Count -eq 0) {
        Add-Both "⚠ 合并失败，而且不是冲突：$($merge.Error)"
        Add-Both '   worktree 保留原状。请检查原因；确定放弃时按 S9 用 flow cleanup 归档 claim（C 项）并清理。'
    }
    elseif ($conflicts.Count -eq 0) {
        Add-Both '合并没有冲突，已在同步分支上提交合并。'
    }
    else {
        $items = @($conflicts | ForEach-Object { Get-FlowConflictCategory $_ $entries })
        Add-Both ''
        Add-Both "冲突文件（$($conflicts.Count) 个，合并停在进行中，等待解决）："
        $lines = Format-FlowCategorized $items 0
        Add-Split $lines $lines
    }
    $bothTouched = @($authorFiles | Where-Object { $personalFiles.Contains($_) -and $conflicts -notcontains $_ })
    if ($bothTouched.Count -gt 0) {
        $items = @($bothTouched | ForEach-Object { Get-FlowConflictCategory $_ $entries })
        Add-Both ''
        Add-Both "双方都改过、自动合并成功的文件（$($bothTouched.Count) 个）：语义可能已经不对，全部要复核；生成文件合并后要重新生成。"
        Add-Split (Format-FlowCategorized $items 15) (Format-FlowCategorized $items 0)
    }
    $overlap = @($conflicts) + $bothTouched
    $affected = @($entries | Where-Object { $e = $_; @($overlap | Where-Object { Test-FlowPathMatch $_ $e.Patterns }).Count -gt 0 })
    if ($affected.Count -gt 0) {
        Add-Both ''
        Add-Both '双方都改过的文件涉及以下个人补丁条目：'
        foreach ($entry in $affected) {
            $note = if ($entry.Status -match '待退役') { '；核对个人重复实现能否退役，并更新 PATCHES.md 状态' } else { '' }
            Add-Both "  - $($entry.Name)（$($entry.Status)；同步冲突时：$($entry.Policy)）$note"
        }
    }
    Add-Both ''
    $authorDbFiles = @($authorFiles | Where-Object { $_.StartsWith($script:DatabaseDir) })
    if ($customSchema -ge 0 -and $upstreamSchema -ge 0 -and $customSchema -ne $upstreamSchema) {
        Add-Both "⚠ 数据库 schema：custom v$customSchema → 作者 v$upstreamSchema。按 S8：交用户构建前请用户关闭 Fushi 并运行 flow backup，并说明这次有迁移。"
    }
    elseif ($customSchema -lt 0 -or $upstreamSchema -lt 0) {
        Add-Both "⚠ 没能读出 schemaVersion（$script:SchemaFile），请人工确认这次是否有数据库迁移。"
    }
    else {
        Add-Both "数据库 schema 版本号未变化（v$customSchema）。"
    }
    if ($authorDbFiles.Count -gt 0) {
        Add-Both "⚠ 作者改了数据库定义（$($authorDbFiles.Count) 个文件）：即使版本号相同，也要核对双方的迁移是否冲突；有迁移就按 S8 先备份。"
    }
    Add-Both ''
    Add-Both '下一步：在同步 worktree 里解决冲突（如有）并提交 → 复核上面列出的全部文件（完整列表在交接单）→ 按个人规则第 5 节验证 → 交用户构建验收 → 按 S3 用 flow adopt 采用。同步期间作者又有更新时，在同步 worktree 里 git fetch upstream 后再 git merge upstream/develop。'

    [System.IO.File]::AppendAllText($task.Handoff, "`n## 同步报告（$(Get-Date -Format 'yyyy-MM-dd HH:mm')）`n`n" + (($full | ForEach-Object { if ($_) { "    $_" } else { '' } }) -join "`n") + "`n", $script:Utf8NoBom)
    $console | ForEach-Object { Write-Output $_ }
    Write-Output "（完整报告已写入交接单：$($task.Handoff)）"
}

# ---- pr-branch ------------------------------------------------------------

function Read-FlowPersonalPaths {
    [OutputType([string[]])]
    param([pscustomobject]$Context)
    $file = Join-Path (Get-FushiHookSourceDir $Context.MainRoot) 'personal-paths.txt'
    if (-not (Test-Path -LiteralPath $file)) { return @() }
    return @([System.IO.File]::ReadAllLines($file) | ForEach-Object { $_.Trim() } | Where-Object { $_ -and -not $_.StartsWith('#') })
}

# 按祖先关系检查提交顺序：后面的提交不能是前面某个提交的祖先。
function Assert-FlowCommitOrder {
    [OutputType([void])]
    param([pscustomobject]$Context, [string[]]$Shas)
    for ($i = 0; $i -lt $Shas.Count; $i++) {
        for ($j = $i + 1; $j -lt $Shas.Count; $j++) {
            if (Test-FlowAncestor $Context $Shas[$j] $Shas[$i]) {
                throw "-Commits 顺序颠倒：$($Shas[$j].Substring(0, 10)) 比 $($Shas[$i].Substring(0, 10)) 更早，请按从旧到新排列。"
            }
        }
    }
}

# 检查 PR 分支并给出下一步；pr-branch 完成时和 -Resume 时都会调用。
function Show-FlowPrBranchChecks {
    [OutputType([void])]
    param([pscustomobject]$Context, [string]$Branch, [string]$Path, [string]$Base)
    $changed = @(Get-FlowGitLines -Dir $Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $Base, 'HEAD'))
    $personal = @(Read-FlowPersonalPaths $Context)
    $leaked = @($changed | Where-Object { Test-FlowPathMatch $_ $personal })
    if ($leaked.Count -gt 0) {
        Write-Output '⚠ PR 分支带进了个人专属路径（推送时钩子也会拦下）：'
        $leaked | ForEach-Object { Write-Output "      $_" }
        Write-Output '   在 PR worktree 里去掉这些改动再提交（custom 的历史不改）；确实要提交给作者时先得到用户明确同意。'
    }
    Write-Output "PR 分支 $Branch 相对作者 $($Base.Substring(0, 10))：$(@(Get-FlowGitLines -Dir $Path -Arguments @('diff', '--shortstat', $Base, 'HEAD')) -join ' ')"
    Write-FlowSection '提交说明（推送前逐条审阅：去掉本地 BUG 编号、个人路径、不该给作者看的内容；需要时在 PR worktree 里改写）'
    Get-FlowGitLines -Dir $Path -Arguments @('log', '--format=  %h %s', "$Base..HEAD") | ForEach-Object { Write-Output $_ }
    $slug = Get-FlowUpstreamSlug $Context
    $owner = ''
    $originUrl = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('remote', 'get-url', 'origin') -AllowFail
    if ($originUrl.Code -eq 0 -and $originUrl.Lines[0] -match 'github\.com[:/](?<owner>[^/]+)/') { $owner = $Matches['owner'] }
    Write-Output ''
    Write-Output '下一步（S4）：'
    Write-Output "  1. 在 $Path 里按个人规则第 5 节验证。"
    Write-Output "  2. 用户同意推送后：`$env:FUSHI_APPROVE='push'; git -C '$Path' push -u origin $Branch; `$env:FUSHI_APPROVE = `$null"
    Write-Output "  3. 把 PR 标题和描述给用户看，同意后：gh pr create -R $slug --base develop --head ${owner}:$Branch --title '<标题>' --body '<描述>'"
}

function Invoke-FlowPrBranch {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Topic,
        [string[]]$Commits,
        [string]$Description,
        [string]$Agent,
        [switch]$Resume
    )
    if (-not $Topic) { throw '用法：flow.ps1 pr-branch <主题> -Commits <提交1>,<提交2> -Description "说明"' }
    if ($Resume) {
        $branch = "pr/$Topic"
        $wt = Get-FlowWorktrees $Context | Where-Object { $_.Branch -eq $branch } | Select-Object -First 1
        if (-not $wt) { throw "找不到 $branch 的 worktree。" }
        $gitDir = @(Get-FlowGitLines -Dir $wt.Path -Arguments @('rev-parse', '--path-format=absolute', '--git-dir'))[0]
        if (Test-Path -LiteralPath (Join-Path $gitDir 'CHERRY_PICK_HEAD')) { throw "$($wt.Path) 里的 cherry-pick 还没完成：先解决冲突并 git cherry-pick --continue（或 --skip / --abort）。" }
        $claim = Get-FlowClaimForBranch $Context $branch
        $base = if ($claim -and $claim.Data.PSObject.Properties['baseSha']) { [string]$claim.Data.baseSha } else { @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('merge-base', $script:UpstreamRef, "refs/heads/$branch"))[0] }
        Show-FlowPrBranchChecks $Context $branch $wt.Path $base
        return
    }
    $shas = @($Commits | ForEach-Object { $_ -split ',' } | ForEach-Object { $_.Trim() } | Where-Object { $_ })
    if ($shas.Count -eq 0) { throw '用 -Commits 指定要带进 PR 的提交（按从旧到新的顺序，逗号分隔）。' }
    $resolved = @(foreach ($sha in $shas) {
        $full = Get-FlowRefSha $Context $sha
        if (-not $full) { throw "找不到提交 $sha。" }
        $parents = @((@(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '-1', '--format=%P', $full))[0]) -split ' ' | Where-Object { $_ })
        if ($parents.Count -gt 1) { throw "$sha 是合并提交，不能直接 cherry-pick；请改为列出它带进来的普通提交。" }
        $full
    })
    Assert-FlowCommitOrder $Context $resolved

    $fetch = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('fetch', '-q', 'upstream') -AllowFail
    if ($fetch.Code -ne 0) { throw "git fetch upstream 失败：$($fetch.Error)" }
    $target = Get-FlowRefSha $Context $script:UpstreamRef
    $task = New-FlowTask $Context $Topic $Description $Agent -BranchPrefix 'pr' -BaseRef $target -BaseLabel 'upstream/develop'
    Write-Output "已从作者 upstream/develop（$($target.Substring(0, 10))）建 $($task.Branch)：$($task.Path)"

    $applied = 0
    $skipped = 0
    for ($i = 0; $i -lt $resolved.Count; $i++) {
        $sha = $resolved[$i]
        # 不加 -x：提交说明里不附带 custom 的提交号。
        $pick = Invoke-FlowGit -Dir $task.Path -Arguments @('cherry-pick', $sha) -AllowFail
        if ($pick.Code -eq 0) { $applied++; continue }
        $conflicts = @(Get-FlowGitLines -Dir $task.Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--diff-filter=U'))
        $gitDir = @(Get-FlowGitLines -Dir $task.Path -Arguments @('rev-parse', '--path-format=absolute', '--git-dir'))[0]
        $inProgress = Test-Path -LiteralPath (Join-Path $gitDir 'CHERRY_PICK_HEAD')
        # 只有确实是空提交（cherry-pick 停在进行中、暂存区与 HEAD 完全相同）才跳过；
        # 其他失败（身份配置、钩子、磁盘等）一律停下报错，不能把真实改动当成「作者已有」丢掉。
        $emptyPick = $conflicts.Count -eq 0 -and $inProgress -and
            (Invoke-FlowGit -Dir $task.Path -Arguments @('diff', '--cached', '--quiet', 'HEAD') -AllowFail).Code -eq 0
        if ($emptyPick) {
            $skip = Invoke-FlowGit -Dir $task.Path -Arguments @('cherry-pick', '--skip') -AllowFail
            if ($skip.Code -ne 0) { throw "cherry-pick $($sha.Substring(0, 10)) 为空但无法跳过：$($skip.Error)" }
            Write-Output "已跳过 $($sha.Substring(0, 10))：它的改动作者仓库里已经有了。"
            $skipped++
            continue
        }
        $rest = @($resolved | Select-Object -Skip ($i + 1) | ForEach-Object { $_.Substring(0, 10) })
        if ($conflicts.Count -gt 0) {
            $message = @("⚠ cherry-pick $($sha.Substring(0, 10)) 冲突，停在进行中（已应用 $applied 个）：") + @($conflicts | ForEach-Object { "      $_" }) +
                @("   在 $($task.Path) 解决后 git add 并 git cherry-pick --continue；放弃这个提交用 git cherry-pick --abort。")
        }
        else {
            $message = @("⚠ cherry-pick $($sha.Substring(0, 10)) 失败（不是冲突，已应用 $applied 个）：", "      $($pick.Error)",
                "   先查明原因再继续：修好后在 $($task.Path) 里 git cherry-pick --continue 或重新 git cherry-pick $($sha.Substring(0, 10))。不要当成「作者已有」跳过。")
        }
        if ($rest.Count -gt 0) { $message += "   剩下还没应用的提交（解决后依次 git cherry-pick）：$($rest -join ', ')" }
        $message += "   全部应用完后运行 flow.ps1 pr-branch $Topic -Resume 重新检查个人路径并给出下一步。"
        $message | ForEach-Object { Write-Output $_ }
        [System.IO.File]::AppendAllText($task.Handoff, "`n## cherry-pick 停下（冲突或失败）（$(Get-Date -Format 'yyyy-MM-dd HH:mm')）`n`n" + (($message | ForEach-Object { "    $_" }) -join "`n") + "`n", $script:Utf8NoBom)
        return
    }
    Write-Output "已 cherry-pick $applied 个提交$(if ($skipped) { "，跳过 $skipped 个（作者已有）" })。"
    Show-FlowPrBranchChecks $Context $task.Branch $task.Path $target
}
