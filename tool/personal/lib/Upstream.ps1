# flow.ps1 patches / sync-upstream / pr-branch：个人补丁清单、同步作者更新、给作者提 PR。
# 由 flow.ps1 dot-source；依赖 Common.ps1、Hooks.ps1、Status.ps1、Tasks.ps1。

$script:UpstreamRef = 'refs/remotes/upstream/develop'
$script:SchemaFile = 'packages/fushi_core/lib/src/database/database.dart'

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
function Read-FlowPatches {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context)
    $file = Get-FlowPatchesFile $Context
    if (-not (Test-Path -LiteralPath $file)) { return @() }
    $entries = [System.Collections.Generic.List[pscustomobject]]::new()
    $inSection = $false
    foreach ($line in [System.IO.File]::ReadAllLines($file)) {
        if ($line -match '^##\s') { $inSection = ($line -match '^##\s+补丁条目'); continue }
        if (-not $inSection -or $line -notmatch '^\|') { continue }
        $cells = @($line.Trim().Trim('|').Split('|') | ForEach-Object { $_.Trim() })
        if ($cells.Count -lt 5 -or $cells[0] -eq '名称' -or $cells[0] -match '^-+$') { continue }
        $patterns = @([regex]::Matches($cells[4], '`([^`]+)`') | ForEach-Object { $_.Groups[1].Value })
        $entries.Add([pscustomobject]@{ Name = $cells[0]; Type = $cells[1]; Status = $cells[2]; Policy = $cells[3]; Patterns = $patterns })
    }
    return $entries.ToArray()
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
    $entries = @(Read-FlowPatches $Context)
    $files = @(Get-FlowPersonalFiles $Context)
    Write-Output "个人补丁清单：$(Get-FlowPatchesFile $Context)"
    Write-Output "custom 相对作者共改动 $($files.Count) 个文件。"
    $covered = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
    Write-FlowSection '已登记的条目'
    foreach ($entry in $entries) {
        $hits = @($files | Where-Object { Test-FlowPathMatch $_ $entry.Patterns })
        foreach ($hit in $hits) { [void]$covered.Add($hit) }
        Write-Output ("  {0}  [{1}｜{2}｜同步冲突时：{3}]  {4} 个文件" -f $entry.Name, $entry.Type, $entry.Status, $entry.Policy, $hits.Count)
        if ($entry.Status -match '待退役' -and $hits.Count -gt 0) {
            Write-Output '      ⚠ 已被作者收录，但相对上次同步时的作者版本仍有改动：下次同步作者更新时以作者版本为准，核对个人重复实现能否退役。'
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
    '规则文件'  = '保留个人版，只吸收作者新增的技术事实（个人规则第 1 节）'
    '生成文件'  = '先解完源文件，再重新生成（如 dart run slang），不手工解'
    'i18n 源'   = '按 CLAUDE.md 的 i18n 纪律合并，不逐语言手改；改完重新生成'
    'bug 登记'  = '用 tool/bug.dart check / renumber / reindex 处理编号，不手改索引'
    '代码'      = '按技术规则解；拿不准就停下来问用户'
}

function Get-FlowConflictCategory {
    [OutputType([pscustomobject])]
    param([string]$Path, [pscustomobject[]]$Entries)
    $category = if ($Path -match '^(CLAUDE\.md|AGENTS\.md|docs/agent/)|/(CLAUDE|AGENTS)\.md$') { '规则文件' }
    elseif ($Path -match '\.(g|freezed)\.dart$') { '生成文件' }
    elseif ($Path -match '^fushi/lib/i18n/.*\.i18n\.json$') { 'i18n 源' }
    elseif ($Path -match '^docs/(BUGS\.md|bugs/)') { 'bug 登记' }
    else { '' }
    if ($category) { return [pscustomobject]@{ Category = $category; Guidance = $script:ConflictGuidance[$category] } }
    $entry = Get-FlowPatchEntryFor $Path $Entries
    if ($entry) { return [pscustomobject]@{ Category = "补丁「$($entry.Name)」"; Guidance = "$($entry.Status)；同步冲突时：$($entry.Policy)" } }
    return [pscustomobject]@{ Category = '代码'; Guidance = $script:ConflictGuidance['代码'] }
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

    $running = Read-FlowClaims $Context | Where-Object { $_.Branch -like 'codex/sync-upstream-*' } | Select-Object -First 1
    if ($running) { throw "已有进行中的同步任务 $($running.Name)（$($running.Branch)）。先完成或按 S9 收尾，再开新的同步。" }

    $entries = @(Read-FlowPatches $Context)
    $base = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('merge-base', 'refs/heads/custom', $target))[0]
    $authorFiles = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $base, $target))
    $personalFiles = [System.Collections.Generic.HashSet[string]]::new([string[]]@(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $base, 'refs/heads/custom')), [System.StringComparer]::Ordinal)
    $customSchema = Get-FlowSchemaVersion $Context 'refs/heads/custom'
    $upstreamSchema = Get-FlowSchemaVersion $Context $target

    $task = New-FlowTask $Context "sync-upstream-$short" "同步作者 upstream/develop $short（$pending 个新提交）" $Agent
    $merge = Invoke-FlowGit -Dir $task.Path -Arguments @('merge', '--no-ff', '-m', "Merge upstream/develop $short into sync branch", $target) -AllowFail
    $conflicts = @(Get-FlowGitLines -Dir $task.Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--diff-filter=U'))
    if ($merge.Code -ne 0 -and $conflicts.Count -eq 0) {
        throw "合并失败（不是冲突）：$($merge.Error)`nworktree 保留在 $($task.Path)，请检查后按 S9 收尾。"
    }

    $report = [System.Collections.Generic.List[string]]::new()
    $report.Add("同步作者 upstream/develop $short：作者有 $pending 个新提交，改了 $($authorFiles.Count) 个文件。")
    $report.Add("同步 worktree：$($task.Path)（分支 $($task.Branch)）")
    if ($conflicts.Count -eq 0) {
        $report.Add('合并没有冲突，已在同步分支上提交合并。')
    }
    else {
        $report.Add('')
        $report.Add("冲突文件（$($conflicts.Count) 个，合并停在进行中，等待解决）：")
        foreach ($group in ($conflicts | ForEach-Object { $c = Get-FlowConflictCategory $_ $entries; [pscustomobject]@{ Path = $_; Category = $c.Category; Guidance = $c.Guidance } } | Group-Object Category)) {
            $report.Add("  [$($group.Name)] $($group.Group[0].Guidance)")
            $group.Group | ForEach-Object { $report.Add("      $($_.Path)") }
        }
    }
    $bothTouched = @($authorFiles | Where-Object { $personalFiles.Contains($_) -and $conflicts -notcontains $_ })
    if ($bothTouched.Count -gt 0) {
        $report.Add('')
        $report.Add("双方都改过、但自动合并成功的文件（$($bothTouched.Count) 个，需要复核语义是否仍正确）：")
        $bothTouched | Select-Object -First 30 | ForEach-Object { $report.Add("      $_") }
        if ($bothTouched.Count -gt 30) { $report.Add("      ……另有 $($bothTouched.Count - 30) 个") }
    }
    $affected = @($entries | Where-Object { $e = $_; @($authorFiles | Where-Object { Test-FlowPathMatch $_ $e.Patterns }).Count -gt 0 })
    if ($affected.Count -gt 0) {
        $report.Add('')
        $report.Add('作者这次也改到了以下个人补丁条目：')
        foreach ($entry in $affected) {
            $note = if ($entry.Status -match '待退役') { '；以作者版本为准，核对个人重复实现能否退役，并更新 PATCHES.md 状态' } else { '' }
            $report.Add("  - $($entry.Name)（$($entry.Status)；同步冲突时：$($entry.Policy)）$note")
        }
    }
    $report.Add('')
    if ($customSchema -ge 0 -and $upstreamSchema -ge 0 -and $customSchema -ne $upstreamSchema) {
        $report.Add("⚠ 数据库 schema：custom v$customSchema → 作者 v$upstreamSchema。按 S8：交用户构建前请用户关闭 Fushi 并运行 flow backup，并说明这次有迁移。")
    }
    elseif ($customSchema -lt 0 -or $upstreamSchema -lt 0) {
        $report.Add("⚠ 没能读出 schemaVersion（$script:SchemaFile），请人工确认这次是否有数据库迁移。")
    }
    else {
        $report.Add("数据库 schema 未变化（v$customSchema）。")
    }
    $report.Add('')
    $report.Add('下一步：在同步 worktree 里解决冲突（如有）并提交 → 复核上面列出的文件 → 按个人规则第 5 节验证 → 交用户构建验收 → 按 S3 用 flow adopt 采用。')

    $report | ForEach-Object { Write-Output $_ }
    [System.IO.File]::AppendAllText($task.Handoff, "`n## 同步报告（$(Get-Date -Format 'yyyy-MM-dd HH:mm')）`n`n" + (($report | ForEach-Object { if ($_) { "    $_" } else { '' } }) -join "`n") + "`n", $script:Utf8NoBom)
}

# ---- pr-branch ------------------------------------------------------------

function Read-FlowPersonalPaths {
    [OutputType([string[]])]
    param([pscustomobject]$Context)
    $file = Join-Path (Get-FushiHookSourceDir $Context.MainRoot) 'personal-paths.txt'
    if (-not (Test-Path -LiteralPath $file)) { return @() }
    return @([System.IO.File]::ReadAllLines($file) | ForEach-Object { $_.Trim() } | Where-Object { $_ -and -not $_.StartsWith('#') })
}

function Invoke-FlowPrBranch {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Topic,
        [string[]]$Commits,
        [string]$Description,
        [string]$Agent
    )
    if (-not $Topic) { throw '用法：flow.ps1 pr-branch <主题> -Commits <提交1>,<提交2> -Description "说明"' }
    $shas = @($Commits | ForEach-Object { $_ -split ',' } | ForEach-Object { $_.Trim() } | Where-Object { $_ })
    if ($shas.Count -eq 0) { throw '用 -Commits 指定要带进 PR 的提交（按从旧到新的顺序，逗号分隔）。' }
    $resolved = foreach ($sha in $shas) {
        $full = Get-FlowRefSha $Context $sha
        if (-not $full) { throw "找不到提交 $sha。" }
        $parents = @((Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '-1', '--format=%P', $full))[0] -split ' ' | Where-Object { $_ })
        if ($parents.Count -gt 1) { throw "$sha 是合并提交，不能直接 cherry-pick；请改为列出它带进来的普通提交。" }
        $full
    }

    $fetch = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('fetch', '-q', 'upstream') -AllowFail
    if ($fetch.Code -ne 0) { throw "git fetch upstream 失败：$($fetch.Error)" }
    $target = Get-FlowRefSha $Context $script:UpstreamRef
    $task = New-FlowTask $Context $Topic $Description $Agent -BranchPrefix 'pr' -BaseRef $target -BaseLabel 'upstream/develop'
    Write-Output "已从作者 upstream/develop（$($target.Substring(0, 10))）建 $($task.Branch)：$($task.Path)"

    $applied = 0
    foreach ($sha in $resolved) {
        $pick = Invoke-FlowGit -Dir $task.Path -Arguments @('cherry-pick', '-x', $sha) -AllowFail
        if ($pick.Code -ne 0) {
            $conflicts = @(Get-FlowGitLines -Dir $task.Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--diff-filter=U'))
            $rest = @($resolved | Select-Object -Skip ($applied + 1) | ForEach-Object { $_.Substring(0, 10) })
            Write-Output "⚠ cherry-pick $($sha.Substring(0, 10)) 冲突，停在进行中（已应用 $applied 个）："
            $conflicts | ForEach-Object { Write-Output "      $_" }
            Write-Output "   在 $($task.Path) 解决后 git add 并 git cherry-pick --continue；放弃这个提交用 git cherry-pick --abort。"
            if ($rest.Count -gt 0) { Write-Output "   剩下还没应用的提交（解决后手动 cherry-pick -x）：$($rest -join ', ')" }
            return
        }
        $applied++
    }
    Write-Output "已 cherry-pick $applied 个提交。"

    $changed = @(Get-FlowGitLines -Dir $task.Path -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', '--no-renames', $target, 'HEAD'))
    $personal = @(Read-FlowPersonalPaths $Context)
    $leaked = @($changed | Where-Object { Test-FlowPathMatch $_ $personal })
    if ($leaked.Count -gt 0) {
        Write-Output '⚠ PR 分支带进了个人专属路径（推送时钩子也会拦下）：'
        $leaked | ForEach-Object { Write-Output "      $_" }
        Write-Output '   从这些提交里去掉个人内容（例如 git rm 后 commit，或拆分提交）；确实要提交给作者时先得到用户明确同意。'
    }
    Write-Output "改动：$(@(Get-FlowGitLines -Dir $task.Path -Arguments @('diff', '--shortstat', $target, 'HEAD')) -join ' ')"
    $slug = Get-FlowUpstreamSlug $Context
    $owner = ''
    $originUrl = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('remote', 'get-url', 'origin') -AllowFail
    if ($originUrl.Code -eq 0 -and $originUrl.Lines[0] -match 'github\.com[:/](?<owner>[^/]+)/') { $owner = $Matches['owner'] }
    Write-Output ''
    Write-Output '下一步（S4）：'
    Write-Output "  1. 在 $($task.Path) 里按个人规则第 5 节验证。"
    Write-Output "  2. 用户同意推送后：`$env:FUSHI_APPROVE='push'; git -C '$($task.Path)' push -u origin $($task.Branch); Remove-Item Env:FUSHI_APPROVE"
    Write-Output "  3. 把 PR 标题和描述给用户看，同意后：gh pr create -R $slug --base develop --head ${owner}:$($task.Branch) --title '<标题>' --body '<描述>'"
}
