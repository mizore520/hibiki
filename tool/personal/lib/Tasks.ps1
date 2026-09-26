# flow.ps1 start / adopt / cleanup：任务 worktree 的开始、采用进 custom 与收尾。
# 由 flow.ps1 dot-source；依赖 Common.ps1、Hooks.ps1、Status.ps1。

# ---- start ----------------------------------------------------------------

# 建 worktree、分支、claim 和交接单，返回 { Name, Branch, Path, Base, ClaimFile, Handoff }。
# 默认基于 custom 建 codex/<名>；pr-branch 传入 -BranchPrefix 'pr' 和作者提交作为基线。
function New-FlowTask {
    [OutputType([pscustomobject])]
    param(
        [pscustomobject]$Context,
        [string]$Name,
        [string]$Description,
        [string]$Agent,
        [string]$BranchPrefix = 'codex',
        [string]$BaseRef = 'refs/heads/custom',
        [string]$BaseLabel = 'custom'
    )
    if ($Name -notmatch '^[a-z0-9][a-z0-9-]*$') {
        throw '任务名只能用小写字母、数字和连字符，例如 gal-lookup-fix。'
    }
    if ($BranchPrefix -eq 'codex' -and $Name -notmatch '-\d{8}(-\d+)?$') { $Name = "$Name-$(Get-Date -Format 'yyyyMMdd')" }
    $branch = "$BranchPrefix/$Name"
    $dirName = if ($BranchPrefix -eq 'codex') { $Name } else { "$BranchPrefix-$Name" }
    $path = Join-Path $Context.WorktreesDir $dirName
    $claimFile = Join-Path $Context.ClaimsDir "$dirName.json"
    if (Test-FlowRef $Context "refs/heads/$branch") { throw "分支 $branch 已存在；接手已有任务请先看它的 claim 和交接单。" }
    if (Test-Path -LiteralPath $path) { throw "目录已存在：$path" }
    if (Test-Path -LiteralPath $claimFile) { throw "claim 已存在：$claimFile" }

    $base = Get-FlowRefSha $Context $BaseRef
    if (-not $base) { throw "找不到基线 $BaseRef。" }
    Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('worktree', 'add', '-q', '-b', $branch, $path, $base) | Out-Null

    [void](New-Item -ItemType Directory -Force -Path $Context.ClaimsDir, $Context.HandoffsDir)
    $handoff = Join-Path $Context.HandoffsDir "$dirName.md"
    $claim = [ordered]@{
        task              = $Description
        agent             = $Agent
        branch            = $branch
        worktree          = ($path -replace '\\', '/')
        baseSha           = $base
        baseRef           = $BaseLabel
        createdAt         = (Get-Date).ToString('s')
        status            = 'active'
        handoff           = ($handoff -replace '\\', '/')
        expectedFiles     = @()
        highConflictFiles = @()
    }
    Save-FlowJson -Path $claimFile -Data $claim
    $template = @"
# 交接单：$dirName

- 任务：$Description
- 分支 / worktree：``$branch`` / ``$path``
- 基线：$BaseLabel ``$base``（$(Get-Date -Format 'yyyy-MM-dd')）

## 阶段

（例如：调查中 / 已写代码 / 工程验证通过 / 等用户验收 / 已合入）

## 已确认事实

## 未解决项

## 证据位置

## 下一步
"@
    [System.IO.File]::WriteAllText($handoff, $template, $script:Utf8NoBom)
    return [pscustomobject]@{ Name = $dirName; Branch = $branch; Path = $path; Base = $base; ClaimFile = $claimFile; Handoff = $handoff }
}

function Start-FlowTask {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Name,
        [string]$Description,
        [string]$Agent,
        [switch]$Setup
    )
    $task = New-FlowTask $Context $Name $Description $Agent
    $Name = $task.Name
    $branch = $task.Branch
    $path = $task.Path
    $base = $task.Base
    $claimFile = $task.ClaimFile
    $handoff = $task.Handoff

    Write-Output "已创建任务 $Name"
    Write-Output "  分支：$branch（基于 custom $($base.Substring(0, 10))）"
    Write-Output "  worktree：$path"
    Write-Output "  claim：$claimFile"
    Write-Output "  交接单：$handoff"
    if ($Setup) {
        Write-Output '运行 tool/setup_worktree.ps1（同步本机真值 + bootstrap）……'
        & pwsh -NoProfile -File (Join-Path $path 'tool\setup_worktree.ps1')
        if ($LASTEXITCODE -ne 0) { throw 'setup_worktree.ps1 失败，见上方输出。' }
    }
    Write-Output '下一步：在该 worktree 里改代码、定向验证并提交；需要应用依赖时加 -Setup 或自行运行 tool/setup_worktree.ps1。'
}

# ---- adopt ----------------------------------------------------------------

function Get-FlowAdoptPlan {
    [OutputType([pscustomobject])]
    param([pscustomobject]$Context, [string]$Branch)
    if (-not $Branch) { throw '用法：flow.ps1 adopt <分支名>（例如 codex/gal-lookup-fix-20260926）' }
    if ($Branch -eq 'custom') { throw '不能把 custom 采用进自己。' }
    $tip = Get-FlowRefSha $Context "refs/heads/$Branch"
    if (-not $tip) { throw "找不到本地分支 $Branch。" }
    $custom = Get-FlowRefSha $Context 'refs/heads/custom'
    $commits = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '--oneline', '--no-decorate', "refs/heads/custom..$tip"))
    $files = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', "refs/heads/custom...$tip"))
    $stat = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('diff', '--shortstat', "refs/heads/custom...$tip"))

    $conflicts = @()
    $mergeTree = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'merge-tree', '--write-tree', '--name-only', '--no-messages', 'refs/heads/custom', $tip) -AllowFail
    if ($mergeTree.Code -eq 1) { $conflicts = @($mergeTree.Lines | Select-Object -Skip 1 | Where-Object { $_ }) }
    elseif ($mergeTree.Code -ne 0) { throw "无法预演合并：$($mergeTree.Error)" }

    $worktree = Get-FlowWorktrees $Context | Where-Object { $_.Branch -eq $Branch } | Select-Object -First 1
    $notes = [System.Collections.Generic.List[string]]::new()
    if ($files -match '^packages/fushi_core/lib/src/database/') {
        $notes.Add('改动了数据库定义：确认是否含 schema 迁移；含迁移时，交给用户构建运行前先 flow.ps1 backup。')
    }
    if ($files -match '^(fushi/(lib|test|integration_test)|packages/[^/]+/(lib|test))/') {
        $notes.Add('改动落在源码/测试扫描面：确认已按个人规则第 5 节完成验证（代码分支含全量 flutter analyze；需要时按 docs/agent/merge-guards.md）。')
    }
    if ($files -match '^native/') {
        $notes.Add('改动了 native：确认双架构构建与相关证据（Galgame 规则）。')
    }
    if ($files -match '^tool/personal/githooks/') {
        $notes.Add('改动了护栏钩子：合入后会从主 checkout 自动重新安装。')
    }
    return [pscustomobject]@{
        Branch    = $Branch
        Tip       = $tip
        Custom    = $custom
        Commits   = $commits
        Files     = $files
        Stat      = ($stat -join ' ').Trim()
        Conflicts = $conflicts
        Worktree  = $worktree
        Merged    = (Test-FlowAncestor $Context $tip $custom)
        Notes     = $notes.ToArray()
    }
}

function Show-FlowAdoptPlan {
    [OutputType([void])]
    param([pscustomobject]$Plan)
    Write-Output "采用预览：$($Plan.Branch) → custom（$($Plan.Custom.Substring(0, 10))）"
    Write-Output "分支尖端：$($Plan.Tip)"
    if ($Plan.Merged) { Write-Output '该分支已全部在 custom 里，无需采用。'; return }
    Write-FlowSection "提交（$($Plan.Commits.Count) 个）"
    $Plan.Commits | ForEach-Object { Write-Output "  $_" }
    Write-FlowSection '改动'
    Write-Output "  $($Plan.Stat)"
    $Plan.Files | Select-Object -First 40 | ForEach-Object { Write-Output "  $_" }
    if ($Plan.Files.Count -gt 40) { Write-Output "  ……另有 $($Plan.Files.Count - 40) 个文件" }
    if ($Plan.Conflicts.Count -gt 0) {
        Write-FlowSection '会产生冲突（不能直接采用）'
        $Plan.Conflicts | ForEach-Object { Write-Output "  $_" }
        Write-Output '  先在任务 worktree 里 git merge custom 解决冲突并提交，再重新预览。'
    }
    if ($Plan.Notes.Count -gt 0) {
        Write-FlowSection '采用前核对'
        $Plan.Notes | ForEach-Object { Write-Output "  - $_" }
    }
    Write-Output ''
    Write-Output '把以上摘要给用户看；用户明确同意后执行（-Expect 锁定这次预览的提交，分支之后有变化会被拒绝）：'
    Write-Output "  `$env:FUSHI_APPROVE='adopt'; pwsh -NoProfile -File tool/personal/flow.ps1 adopt $($Plan.Branch) -Apply -Expect $($Plan.Tip); Remove-Item Env:FUSHI_APPROVE"
}

function Invoke-FlowAdopt {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Branch,
        [string]$Expect,
        [string]$Message,
        [switch]$KeepClaim
    )
    $plan = Get-FlowAdoptPlan $Context $Branch
    if ($plan.Merged) { Write-Output "$Branch 已全部在 custom 里，无需采用。"; return }
    if (-not $Expect -or $Expect.Length -lt 7 -or -not $plan.Tip.StartsWith($Expect.ToLowerInvariant())) {
        throw "分支现在的尖端是 $($plan.Tip)，与 -Expect '$Expect' 不符（或没给 -Expect）。重新运行不带 -Apply 的预览给用户看，再用新的 -Expect 执行。"
    }
    if (-not (Test-FlowApproved 'adopt')) {
        throw '采用需要用户明确同意：先运行不带 -Apply 的 adopt 把摘要给用户看，同意后带 FUSHI_APPROVE=adopt 再执行。'
    }
    if ($plan.Conflicts.Count -gt 0) {
        throw "与 custom 有冲突：$($plan.Conflicts -join ', ')。先在任务 worktree 里合并 custom 解决冲突。"
    }
    $mainBranch = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('rev-parse', '--abbrev-ref', 'HEAD'))[0]
    if ($mainBranch -ne 'custom') { throw "主 checkout 当前在 $mainBranch，不在 custom；先和用户确认。" }
    $mainDirty = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('status', '--porcelain', '--untracked-files=no') | Where-Object { $_ })
    if ($mainDirty.Count -gt 0) { throw "主 checkout 有未提交的改动：`n$($mainDirty -join "`n")" }
    if ($plan.Worktree) {
        $dirty = Get-FlowDirtyCount $plan.Worktree.Path
        if ($dirty -ne 0) { throw "任务 worktree 有 $dirty 处未提交改动：$($plan.Worktree.Path)。先提交或和用户确认。" }
    }

    if (-not $Message) { $Message = "Merge $Branch into custom" }
    # 合入预览时锁定的那个提交，而不是分支名：避免把预览之后才出现的提交带进来。
    $merge = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge', '--no-ff', '-q', '-m', $Message, $plan.Tip) -AllowFail
    if ($merge.Code -ne 0) {
        $abort = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge', '--abort') -AllowFail
        $mergeHeadLeft = Test-Path -LiteralPath (Join-Path $Context.CommonDir 'MERGE_HEAD')
        $state = if ($abort.Code -eq 0 -and -not $mergeHeadLeft) { '已 merge --abort，主 checkout 恢复原状。' } else { "merge --abort 没有成功（$($abort.Error)）；请在主 checkout 运行 git status，按提示 --abort 或 git reset --merge HEAD 恢复后再和用户确认。" }
        throw "合并失败：`n$($merge.Error)`n$($merge.Lines -join "`n")`n$state"
    }
    $merged = Get-FlowRefSha $Context 'refs/heads/custom'
    Write-Output "已采用：$Branch（$($plan.Tip.Substring(0, 10))）→ custom $($merged.Substring(0, 10))"

    if ($plan.Files -match '^tool/personal/githooks/') {
        Install-FushiHooks $Context.MainRoot
    }
    $claim = Get-FlowClaimForBranch $Context $Branch
    if ($claim -and -not $KeepClaim) {
        Move-FlowClaimToDone $Context $claim "adopted $($merged.Substring(0, 10)) $(Get-Date -Format 'yyyy-MM-dd')" | Out-Null
        Write-Output "claim $($claim.Name) 已归档到 done/。"
    }
    elseif ($claim) {
        $claim.Data | Add-Member -NotePropertyName status -NotePropertyValue "adopted $($merged.Substring(0, 10)); continuing" -Force
        Save-FlowJson -Path $claim.File -Data $claim.Data
        Write-Output "claim $($claim.Name) 保持进行中（-KeepClaim）。"
    }
    Write-Output ''
    Write-Output '收尾：'
    if ($plan.Worktree -and -not $KeepClaim) { Write-Output "  - worktree $($plan.Worktree.Path) 可用 flow.ps1 cleanup 列出后，经用户确认删除。" }
    Write-Output '  - 问用户是否推送备份：$env:FUSHI_APPROVE=''push''; git push origin custom; Remove-Item Env:FUSHI_APPROVE'
}

# ---- cleanup --------------------------------------------------------------

$script:CleanupBranchPattern = '^(codex|pr)/'

# 清理项。Target 是执行时核对用的唯一目标（worktree/目录为路径，分支、claim 为名字）。
function New-FlowCleanupItem {
    [OutputType([pscustomobject])]
    param([string]$Kind, [string]$Target, [string]$State, [bool]$Selectable, [string[]]$Notes, [string]$Branch = '', [string]$ClaimName = '')
    if ($Target.Contains(',')) {
        $Selectable = $false
        $Notes = @($Notes) + '路径含逗号，无法按编号安全执行'
    }
    return [pscustomobject]@{ Id = ''; Kind = $Kind; Target = $Target; State = $State; Selectable = $Selectable; Notes = @($Notes | Where-Object { $_ }); Branch = $Branch; ClaimName = $ClaimName }
}

function Get-FlowCleanupItems {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context, [pscustomobject[]]$PullRequests)
    $items = [System.Collections.Generic.List[pscustomobject]]::new()
    $cache = @{}
    $worktrees = @(Get-FlowWorktrees $Context)
    $claims = @(Read-FlowClaims $Context)

    foreach ($wt in $worktrees) {
        if (Test-FlowSamePath $wt.Path $Context.MainRoot) { continue }
        if ((Split-Path $wt.Path -Leaf) -eq $script:CandidateBuildDirName) { continue }
        $notes = [System.Collections.Generic.List[string]]::new()
        $claim = $claims | Where-Object { $wt.Branch -and $_.Branch -eq $wt.Branch } | Select-Object -First 1
        if ($wt.Branch) {
            $state = Get-FlowBranchState $Context $wt.Branch $PullRequests $cache
            $label = $state.Label
            # 没有自己的提交：尖端本来就在主线上，删分支不丢任何提交；刚开始的任务由 claim 挡住。
            $landed = $state.Landed -or $state.NoOwnCommits
            if ($state.NoOwnCommits) { $notes.Add('删除不会丢提交；但如果是刚开始、还没登记 claim 的任务，不要清理') }
        }
        else {
            $label = '分离 HEAD'
            $landed = $false
        }
        $namespaceOk = $wt.Branch -match $script:CleanupBranchPattern
        if (-not $namespaceOk) { $notes.Add('不是 codex/* 或 pr/* 分支，不自动清理') }
        $dirty = Get-FlowDirtyCount $wt.Path
        if ($dirty -ne 0) { $notes.Add("有 $dirty 处未提交改动") }
        if ($claim) { $notes.Add("claim $($claim.Name) 仍在进行中：任务确实结束时先归档该 claim（见 C 项），再清理 worktree") }
        $ignored = @(Get-FlowIgnoredItems $wt.Path)
        if ($ignored.Count -gt 0) {
            $shown = ($ignored | Select-Object -First 4) -join '、'
            $more = if ($ignored.Count -gt 4) { " 等 $($ignored.Count) 项" } else { '' }
            $notes.Add("删除会一并删掉被忽略的本机文件：$shown$more")
        }
        $selectable = $landed -and $namespaceOk -and $dirty -eq 0 -and -not $claim
        $claimName = if ($claim) { $claim.Name } else { '' }
        $items.Add((New-FlowCleanupItem 'worktree' $wt.Path $label $selectable $notes.ToArray() $wt.Branch $claimName))
    }

    $worktreeBranches = @($worktrees | ForEach-Object { $_.Branch } | Where-Object { $_ })
    foreach ($ref in (Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('for-each-ref', '--format=%(refname:short)', 'refs/heads/codex/', 'refs/heads/pr/'))) {
        if ($worktreeBranches -contains $ref) { continue }
        $state = Get-FlowBranchState $Context $ref $PullRequests $cache
        $claim = $claims | Where-Object { $_.Branch -eq $ref } | Select-Object -First 1
        $notes = @()
        if ($state.NoOwnCommits) { $notes += '尖端已在主线上，删除不会丢提交' }
        if ($claim) { $notes += "claim $($claim.Name) 仍在进行中" }
        $items.Add((New-FlowCleanupItem 'branch' $ref $state.Label (($state.Landed -or $state.NoOwnCommits) -and -not $claim) $notes $ref))
    }

    foreach ($claim in $claims) {
        $hasBranch = $claim.Branch -and (Test-FlowRef $Context "refs/heads/$($claim.Branch)")
        $hasWorktree = [bool]($worktrees | Where-Object { $claim.Branch -and $_.Branch -eq $claim.Branch })
        if (-not $hasBranch -and -not $hasWorktree) {
            $items.Add((New-FlowCleanupItem 'claim' $claim.Name "过期（分支和 worktree 都不存在；原状态：$($claim.Status)）" $true @() '' $claim.Name))
            continue
        }
        if ($hasBranch) {
            $state = Get-FlowBranchState $Context $claim.Branch $PullRequests $cache
            if ($state.Landed) {
                $items.Add((New-FlowCleanupItem 'claim' $claim.Name "分支内容已合入（$($state.Label)）；原状态：$($claim.Status)" $true @('只在任务确实结束时归档；任务还要继续就不要选') $claim.Branch $claim.Name))
            }
            elseif ($state.NoOwnCommits) {
                # 刚开始、或已放弃的任务（例如放弃的同步、cherry-pick 后 --abort 的 PR）：不归档就会一直挡住清理和重开。
                # worktree 里还有未提交改动或进行中的合并 / cherry-pick，说明任务还在做，只报告。
                $claimWt = $worktrees | Where-Object { $_.Branch -eq $claim.Branch } | Select-Object -First 1
                $busy = $claimWt -and (Test-FlowWorktreeBusy $claimWt.Path)
                $notes = if ($busy) { @('worktree 里有未提交改动或进行中的合并 / cherry-pick，任务还在做，不能归档') } else { @('只在用户确认任务已放弃时归档；归档后分支和 worktree 才会变成可清理') }
                $item = New-FlowCleanupItem 'claim' $claim.Name "分支上没有自己的提交（刚开始或已放弃）；原状态：$($claim.Status)" (-not $busy) $notes $claim.Branch $claim.Name
                $item | Add-Member -NotePropertyName Abandon -NotePropertyValue $true
                $items.Add($item)
            }
            elseif (-not $hasWorktree) {
                $item = New-FlowCleanupItem 'claim' $claim.Name "worktree 已不存在，分支还在（$($state.Label)）；原状态：$($claim.Status)" $true @('只在用户确认任务已放弃时归档；归档不会删除分支，分支上的提交仍在') $claim.Branch $claim.Name
                $item | Add-Member -NotePropertyName Abandon -NotePropertyValue $true
                $items.Add($item)
            }
        }
    }

    if (Test-Path -LiteralPath $Context.WorktreesDir) {
        $worktreePaths = @($worktrees | ForEach-Object { $_.Path })
        foreach ($dir in (Get-ChildItem -LiteralPath $Context.WorktreesDir -Directory)) {
            if ($dir.Name -in @('coordination', $script:CandidateBuildDirName)) { continue }
            if ($worktreePaths | Where-Object { Test-FlowSamePath $_ $dir.FullName }) { continue }
            $files = @(Get-ChildItem -LiteralPath $dir.FullName -Recurse -File -Force -ErrorAction SilentlyContinue)
            if ($files.Count -eq 0) {
                $items.Add((New-FlowCleanupItem 'dir' $dir.FullName '空目录（不是 worktree）' $true @()))
            }
            else {
                $items.Add((New-FlowCleanupItem 'dir' $dir.FullName "不是 worktree，但有 $($files.Count) 个文件" $false @('可能是残留成果或删到一半的 worktree，只报告')))
            }
        }
    }

    $prefix = @{ worktree = 'W'; branch = 'B'; claim = 'C'; dir = 'D' }
    foreach ($kind in @('worktree', 'branch', 'claim', 'dir')) {
        $n = 0
        foreach ($item in ($items | Where-Object { $_.Kind -eq $kind })) {
            $n++
            $item.Id = "$($prefix[$kind])$n"
        }
    }
    return $items.ToArray()
}

function Show-FlowCleanupItems {
    [OutputType([void])]
    param([pscustomobject[]]$Items)
    if ($Items.Count -eq 0) { Write-Output '没有需要清理的项目。'; return }
    foreach ($kind in @('worktree', 'branch', 'claim', 'dir')) {
        $group = @($Items | Where-Object { $_.Kind -eq $kind })
        if ($group.Count -eq 0) { continue }
        $title = @{ worktree = 'worktree'; branch = '没有 worktree 的本地分支'; claim = 'claim（只归档，不删除）'; dir = '.worktrees 下的其他目录' }[$kind]
        Write-FlowSection $title
        foreach ($item in $group) {
            $mark = if ($item.Selectable) { '可清理' } else { '只报告' }
            Write-Output "[$($item.Id)] $mark  $($item.Target)  —  $($item.State)"
            foreach ($note in $item.Notes) { Write-Output "        ⚠ $note" }
        }
    }
    # 示例命令不选「放弃任务」类的 claim：那类必须由用户明确确认放弃。
    $example = $Items | Where-Object { $_.Selectable -and -not $_.PSObject.Properties['Abandon'] } | Select-Object -First 1
    Write-Output ''
    Write-Output '把清单给用户看，按用户确认的项执行。每项写成「编号=目标」，编号与目标对不上会被拒绝；'
    Write-Output '删除 worktree / 分支 / 目录需要 cleanup 同意，只归档 claim 不需要：'
    if ($example) {
        Write-Output "  `$env:FUSHI_APPROVE='cleanup'; pwsh -NoProfile -File tool/personal/flow.ps1 cleanup -Apply -Items '$($example.Id)=$($example.Target)'; Remove-Item Env:FUSHI_APPROVE"
    }
}

function Test-FlowCleanupTarget {
    [OutputType([bool])]
    param([pscustomobject]$Item, [string]$Target)
    if ($Item.Kind -in @('worktree', 'dir')) { return (Test-FlowSamePath $Item.Target $Target) }
    return ($Item.Target -ceq $Target)
}

function Invoke-FlowCleanup {
    [OutputType([void])]
    param([pscustomobject]$Context, [pscustomobject[]]$Items, [string[]]$Selected)
    $entries = @($Selected | ForEach-Object { $_ -split ',' } | ForEach-Object { $_.Trim() } | Where-Object { $_ })
    if ($entries.Count -eq 0) { throw "用 -Items 指定要清理的项，写成「编号=目标」，例如 -Items 'W1=E:\...\task,C2=old-claim'。" }
    $chosen = foreach ($entry in $entries) {
        $pos = $entry.IndexOf('=')
        if ($pos -lt 1) { throw "「$entry」缺少目标。每项要写成「编号=目标」（目标照抄清单里的路径或名字），防止清单变化后编号指向别的项。" }
        $id = $entry.Substring(0, $pos).Trim().ToUpperInvariant()
        $target = $entry.Substring($pos + 1).Trim()
        $item = $Items | Where-Object { $_.Id -eq $id } | Select-Object -First 1
        if (-not $item) { throw "没有编号 $id（清单已变化），先重新运行 cleanup 给用户看。" }
        if (-not (Test-FlowCleanupTarget $item $target)) { throw "$id 现在指向 $($item.Target)，不是「$target」；清单已变化，先重新运行 cleanup 给用户看。" }
        if (-not $item.Selectable) { throw "$id 只报告、不可清理：$($item.Target)（$($item.State)）" }
        $item
    }
    if (($chosen | Where-Object { $_.Kind -ne 'claim' }) -and -not (Test-FlowApproved 'cleanup')) {
        throw '删除 worktree / 分支 / 目录需要用户确认清单后带 FUSHI_APPROVE=cleanup 执行。'
    }
    foreach ($item in $chosen) {
        switch ($item.Kind) {
            'worktree' {
                $remove = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('worktree', 'remove', $item.Target) -AllowFail
                if ($remove.Code -ne 0) {
                    throw "[$($item.Id)] 删除 worktree 失败（可能有文件被占用）：$($remove.Error)`n请用户关闭占用该目录的程序后，运行 git worktree prune，再重新运行 cleanup；剩下的目录会显示为「只报告」，确认无用后再处理。后面的项没有执行。"
                }
                Write-Output "[$($item.Id)] 已删除 worktree $($item.Target)"
                if ($item.Branch -match $script:CleanupBranchPattern) {
                    Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('branch', '-D', $item.Branch) | Out-Null
                    Write-Output "[$($item.Id)] 已删除分支 $($item.Branch)"
                }
            }
            'branch' {
                Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('branch', '-D', $item.Target) | Out-Null
                Write-Output "[$($item.Id)] 已删除分支 $($item.Target)"
            }
            'claim' {
                $claim = Read-FlowClaims $Context | Where-Object { $_.Name -eq $item.ClaimName } | Select-Object -First 1
                if ($claim) { Move-FlowClaimToDone $Context $claim "archived by cleanup $(Get-Date -Format 'yyyy-MM-dd')" | Out-Null }
                Write-Output "[$($item.Id)] claim $($item.ClaimName) 已归档到 done/"
            }
            'dir' {
                if (@(Get-ChildItem -LiteralPath $item.Target -Recurse -File -Force -ErrorAction SilentlyContinue).Count -gt 0) {
                    throw "[$($item.Id)] $($item.Target) 现在不是空目录了，停止。"
                }
                Remove-Item -LiteralPath $item.Target -Recurse -Force
                Write-Output "[$($item.Id)] 已删除空目录 $($item.Target)"
            }
        }
    }
}
