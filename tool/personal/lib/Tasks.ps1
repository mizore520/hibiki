# flow.ps1 start / adopt / cleanup：任务 worktree 的开始、采用进 custom 与收尾。
# 由 flow.ps1 dot-source；依赖 Common.ps1、Hooks.ps1、Status.ps1。

# ---- start ----------------------------------------------------------------

function Start-FlowTask {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Name,
        [string]$Description,
        [string]$Agent,
        [switch]$Setup
    )
    if ($Name -notmatch '^[a-z0-9][a-z0-9-]*$') {
        throw '任务名只能用小写字母、数字和连字符，例如 gal-lookup-fix。'
    }
    if ($Name -notmatch '-\d{8}$') { $Name = "$Name-$(Get-Date -Format 'yyyyMMdd')" }
    $branch = "codex/$Name"
    $path = Join-Path $Context.WorktreesDir $Name
    $claimFile = Join-Path $Context.ClaimsDir "$Name.json"
    if (Test-FlowRef $Context "refs/heads/$branch") { throw "分支 $branch 已存在；接手已有任务请先看它的 claim 和交接单。" }
    if (Test-Path -LiteralPath $path) { throw "目录已存在：$path" }
    if (Test-Path -LiteralPath $claimFile) { throw "claim 已存在：$claimFile" }

    $base = Get-FlowRefSha $Context 'refs/heads/custom'
    if (-not $base) { throw '找不到 custom 分支。' }
    Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('worktree', 'add', '-q', '-b', $branch, $path, 'refs/heads/custom') | Out-Null

    [void](New-Item -ItemType Directory -Force -Path $Context.ClaimsDir, $Context.HandoffsDir)
    $handoff = Join-Path $Context.HandoffsDir "$Name.md"
    $claim = [ordered]@{
        task              = $Description
        agent             = $Agent
        branch            = $branch
        worktree          = ($path -replace '\\', '/')
        baseSha           = $base
        createdAt         = (Get-Date).ToString('s')
        status            = 'active'
        handoff           = ($handoff -replace '\\', '/')
        expectedFiles     = @()
        highConflictFiles = @()
    }
    Save-FlowJson -Path $claimFile -Data $claim
    $template = @"
# 交接单：$Name

- 任务：$Description
- 分支 / worktree：``$branch`` / ``$path``
- 基线：custom ``$base``（$(Get-Date -Format 'yyyy-MM-dd')）

## 阶段

（例如：调查中 / 已写代码 / 工程验证通过 / 等用户验收 / 已合入）

## 已确认事实

## 未解决项

## 证据位置

## 下一步
"@
    [System.IO.File]::WriteAllText($handoff, $template, $script:Utf8NoBom)

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
    $commits = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '--oneline', '--no-decorate', "refs/heads/custom..refs/heads/$Branch"))
    $files = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('-c', 'core.quotepath=false', 'diff', '--name-only', "refs/heads/custom...refs/heads/$Branch"))
    $stat = @(Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('diff', '--shortstat', "refs/heads/custom...refs/heads/$Branch"))

    $conflicts = @()
    $mergeTree = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge-tree', '--write-tree', '--name-only', '--no-messages', 'refs/heads/custom', "refs/heads/$Branch") -AllowFail
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
        $notes.Add('改动了护栏钩子：合入后会自动重新安装。')
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
    Write-Output "采用预览：$($Plan.Branch)（$($Plan.Tip.Substring(0, 10))）→ custom（$($Plan.Custom.Substring(0, 10))）"
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
    Write-Output '把以上摘要给用户看；用户明确同意后执行：'
    Write-Output "  `$env:FUSHI_APPROVE='adopt'; pwsh -File tool/personal/flow.ps1 adopt $($Plan.Branch) -Apply; Remove-Item Env:FUSHI_APPROVE"
}

function Invoke-FlowAdopt {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Branch,
        [string]$Message,
        [switch]$KeepClaim
    )
    $plan = Get-FlowAdoptPlan $Context $Branch
    if ($plan.Merged) { Write-Output "$Branch 已全部在 custom 里，无需采用。"; return }
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
    $merge = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge', '--no-ff', '-q', '-m', $Message, "refs/heads/$Branch") -AllowFail
    if ($merge.Code -ne 0) {
        Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge', '--abort') -AllowFail | Out-Null
        throw "合并失败，已 merge --abort：`n$($merge.Error)`n$($merge.Lines -join "`n")"
    }
    $merged = Get-FlowRefSha $Context 'refs/heads/custom'
    Write-Output "已采用：$Branch → custom $($merged.Substring(0, 10))"

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

function Get-FlowCleanupItems {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context, [pscustomobject[]]$PullRequests)
    $items = [System.Collections.Generic.List[pscustomobject]]::new()
    $worktrees = @(Get-FlowWorktrees $Context)
    $claims = @(Read-FlowClaims $Context)
    $removable = @('已合入 custom', '内容已进作者仓库')

    function Add-Item([string]$Kind, [string]$Target, [string]$State, [bool]$Selectable, [string]$Note, [string]$Branch = '', [string]$ClaimName = '') {
        $prefix = @{ claim = 'C'; worktree = 'W'; branch = 'B'; dir = 'D' }[$Kind]
        $id = "$prefix$(@($items | Where-Object { $_.Kind -eq $Kind }).Count + 1)"
        $items.Add([pscustomobject]@{ Id = $id; Kind = $Kind; Target = $Target; State = $State; Selectable = $Selectable; Note = $Note; Branch = $Branch; ClaimName = $ClaimName })
    }

    foreach ($wt in $worktrees) {
        if (Test-FlowSamePath $wt.Path $Context.MainRoot) { continue }
        if ((Split-Path $wt.Path -Leaf) -eq $script:CandidateBuildDirName) { continue }
        $state = if ($wt.Branch) { Get-FlowBranchState $Context $wt.Branch $PullRequests } else { '分离 HEAD' }
        $dirty = Get-FlowDirtyCount $wt.Path
        $evidence = Get-FlowEvidenceCount $wt.Path
        $claim = $claims | Where-Object { $wt.Branch -and $_.Branch -eq $wt.Branch } | Select-Object -First 1
        $finished = ($removable -contains $state) -or ($state -match '^PR #\d+ 已合并')
        $notes = @()
        if ($dirty -ne 0) { $notes += "有 $dirty 处未提交改动" }
        if ($evidence -gt 0) { $notes += "有 $evidence 个本机证据文件（.codex-test），删除会一并删掉" }
        if ($state -match '未进作者仓库') { $notes += '删除会丢掉未进作者仓库的提交' }
        $selectable = $finished -and $dirty -eq 0
        $claimName = if ($claim) { $claim.Name } else { '' }
        Add-Item 'worktree' $wt.Path $state $selectable ($notes -join '；') $wt.Branch $claimName
    }

    $worktreeBranches = @($worktrees | ForEach-Object { $_.Branch } | Where-Object { $_ })
    foreach ($ref in (Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('for-each-ref', '--format=%(refname:short)', 'refs/heads/codex/', 'refs/heads/pr/'))) {
        if ($worktreeBranches -contains $ref) { continue }
        $state = Get-FlowBranchState $Context $ref $PullRequests
        $finished = ($removable -contains $state) -or ($state -match '^PR #\d+ 已合并')
        $note = if ($state -match '未进作者仓库') { '删除会丢掉未进作者仓库的提交' } else { '' }
        Add-Item 'branch' $ref $state $finished $note $ref
    }

    foreach ($claim in $claims) {
        $hasBranch = $claim.Branch -and (Test-FlowRef $Context "refs/heads/$($claim.Branch)")
        $hasWorktree = [bool]($worktrees | Where-Object { $claim.Branch -and $_.Branch -eq $claim.Branch })
        if (-not $hasBranch -and -not $hasWorktree) {
            Add-Item 'claim' $claim.Name "过期（分支和 worktree 都不存在；原状态：$($claim.Status)）" $true '' '' $claim.Name
        }
        elseif ($hasBranch -and -not $hasWorktree -and (Test-FlowAncestor $Context "refs/heads/$($claim.Branch)" 'refs/heads/custom')) {
            Add-Item 'claim' $claim.Name '分支已合入 custom，worktree 已不存在' $true '' $claim.Branch $claim.Name
        }
    }

    if (Test-Path -LiteralPath $Context.WorktreesDir) {
        $worktreePaths = @($worktrees | ForEach-Object { $_.Path })
        foreach ($dir in (Get-ChildItem -LiteralPath $Context.WorktreesDir -Directory)) {
            if ($dir.Name -in @('coordination', $script:CandidateBuildDirName)) { continue }
            if ($worktreePaths | Where-Object { Test-FlowSamePath $_ $dir.FullName }) { continue }
            $files = @(Get-ChildItem -LiteralPath $dir.FullName -Recurse -File -Force -ErrorAction SilentlyContinue)
            if ($files.Count -eq 0) {
                Add-Item 'dir' $dir.FullName '空目录（不是 worktree）' $true ''
            }
            else {
                Add-Item 'dir' $dir.FullName "不是 worktree，但有 $($files.Count) 个文件" $false '可能是残留成果，只报告'
            }
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
        $title = @{ worktree = 'worktree'; branch = '没有 worktree 的本地分支'; claim = 'claim（只归档）'; dir = '.worktrees 下的其他目录' }[$kind]
        Write-FlowSection $title
        foreach ($item in $group) {
            $mark = if ($item.Selectable) { '可清理' } else { '只报告' }
            $note = if ($item.Note) { "  ⚠ $($item.Note)" } else { '' }
            Write-Output "[$($item.Id)] $mark  $($item.Target)  —  $($item.State)$note"
        }
    }
    Write-Output ''
    Write-Output '把清单给用户看，按用户确认的编号执行（删除 worktree/分支/目录需要 cleanup 同意）：'
    Write-Output "  `$env:FUSHI_APPROVE='cleanup'; pwsh -File tool/personal/flow.ps1 cleanup -Apply -Items W1,C2; Remove-Item Env:FUSHI_APPROVE"
}

function Invoke-FlowCleanup {
    [OutputType([void])]
    param([pscustomobject]$Context, [pscustomobject[]]$Items, [string[]]$Selected)
    $ids = @($Selected | ForEach-Object { $_ -split ',' } | ForEach-Object { $_.Trim().ToUpperInvariant() } | Where-Object { $_ })
    if ($ids.Count -eq 0) { throw '用 -Items 指定要清理的编号，例如 -Items W1,C2。' }
    $chosen = foreach ($id in $ids) {
        $item = $Items | Where-Object { $_.Id -eq $id } | Select-Object -First 1
        if (-not $item) { throw "没有编号 $id（清单可能已变化，先重新运行 cleanup 查看）。" }
        if (-not $item.Selectable) { throw "$id 只报告、不可清理：$($item.Target)（$($item.State)）" }
        $item
    }
    if (($chosen | Where-Object { $_.Kind -ne 'claim' }) -and -not (Test-FlowApproved 'cleanup')) {
        throw '删除 worktree / 分支 / 目录需要用户确认清单后带 FUSHI_APPROVE=cleanup 执行。'
    }
    foreach ($item in $chosen) {
        switch ($item.Kind) {
            'worktree' {
                Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('worktree', 'remove', $item.Target) | Out-Null
                Write-Output "[$($item.Id)] 已删除 worktree $($item.Target)"
                if ($item.Branch) {
                    Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('branch', '-D', $item.Branch) | Out-Null
                    Write-Output "[$($item.Id)] 已删除分支 $($item.Branch)"
                }
                if ($item.ClaimName) {
                    $claim = Read-FlowClaims $Context | Where-Object { $_.Name -eq $item.ClaimName } | Select-Object -First 1
                    if ($claim) { Move-FlowClaimToDone $Context $claim "cleaned $(Get-Date -Format 'yyyy-MM-dd')" | Out-Null; Write-Output "[$($item.Id)] claim $($claim.Name) 已归档" }
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
