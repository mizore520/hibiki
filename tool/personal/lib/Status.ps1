# flow.ps1 status：从 git、claim、gh 实时汇总当前状态；只读（fetch 除外）。
# 由 flow.ps1 dot-source；依赖 Common.ps1、Hooks.ps1、Backup.ps1。

# 与 pre-push 的 pr_max_commits 一致：比作者多这么多以内的分支才当作 PR 类分支比对。
$script:NearUpstreamMaxCommits = 100

# 作者仓库改过名，gh 的 PR 列表不跟随旧名，先解析出当前正式名。
function Get-FlowUpstreamSlug {
    [OutputType([string])]
    param([pscustomobject]$Context)
    $url = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('remote', 'get-url', 'upstream') -AllowFail
    if ($url.Code -ne 0) { return '' }
    if ($url.Lines[0] -notmatch 'github\.com[:/](?<slug>[^/]+/[^/]+?)(\.git)?$') { return '' }
    $slug = gh repo view $Matches['slug'] --json nameWithOwner -q .nameWithOwner 2>$null
    if ($LASTEXITCODE -ne 0 -or -not $slug) { return $Matches['slug'] }
    return "$slug".Trim()
}

# 用户在作者仓库开过的 PR（最近 20 条）；离线或 gh 不可用时返回空。
function Get-FlowAuthorPullRequests {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context)
    if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { return @() }
    $slug = Get-FlowUpstreamSlug $Context
    if (-not $slug) { return @() }
    $json = gh pr list -R $slug --author '@me' --state all -L 20 --json 'number,title,state,headRefName,mergedAt' 2>$null
    if ($LASTEXITCODE -ne 0 -or -not $json) { return @() }
    return @($json | ConvertFrom-Json)
}

function Update-FlowRemotes {
    [OutputType([string[]])]
    param([pscustomobject]$Context)
    $warnings = [System.Collections.Generic.List[string]]::new()
    foreach ($remote in @('upstream', 'origin')) {
        $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('fetch', '-q', $remote) -AllowFail
        if ($result.Code -ne 0) { $warnings.Add("git fetch $remote 失败，以下结果可能过时：$($result.Error)") }
    }
    return $warnings.ToArray()
}

# 把分支归类。Landed=真 表示分支内容已全部在 custom 或作者仓库里，删掉它不会丢改动；
# NoOwnCommits=真 表示分支只是从某处拉出来、自己没有提交（刚开始的任务）。
# PR 已合并只作提示：squash、改写或合并后又有新提交都可能让分支带着未落地的改动。
# $Cache 由调用方传入同一个 hashtable，缓存第一父链集合。
function Get-FlowBranchState {
    [OutputType([pscustomobject])]
    param([pscustomobject]$Context, [string]$Branch, [pscustomobject[]]$PullRequests, [hashtable]$Cache)
    function New-State([string]$Label, [bool]$Landed = $false, [bool]$NoOwnCommits = $false) {
        return [pscustomobject]@{ Label = $Label; Landed = $Landed; NoOwnCommits = $NoOwnCommits }
    }
    if (-not $Branch -or -not (Test-FlowRef $Context "refs/heads/$Branch")) { return (New-State '无分支') }
    $tip = Get-FlowRefSha $Context "refs/heads/$Branch"
    $upstream = 'refs/remotes/upstream/develop'
    $hasUpstream = Test-FlowRef $Context $upstream

    if (Test-FlowAncestor $Context $tip 'refs/heads/custom') {
        if (-not $Cache.ContainsKey('custom')) { $Cache['custom'] = Get-FlowFirstParentSet $Context 'refs/heads/custom' }
        if ($Cache['custom'].Contains($tip)) { return (New-State '没有自己的提交（尖端在 custom 主线上）' $false $true) }
        return (New-State '已合入 custom' $true)
    }
    # 只对「离作者代码不远」的分支和作者比；基于 custom 的分支比作者多上万提交，比也没意义。
    $nearUpstream = $false
    if ($hasUpstream) {
        $aheadOfUpstream = Get-FlowCount $Context "$upstream..$tip"
        $nearUpstream = ($aheadOfUpstream -ge 0 -and $aheadOfUpstream -le $script:NearUpstreamMaxCommits)
    }
    if ($nearUpstream) {
        if (Test-FlowAncestor $Context $tip $upstream) {
            if (-not $Cache.ContainsKey('upstream')) { $Cache['upstream'] = Get-FlowFirstParentSet $Context $upstream }
            if ($Cache['upstream'].Contains($tip)) { return (New-State '没有自己的提交（尖端在作者主线上）' $false $true) }
            return (New-State '已合入作者仓库' $true)
        }
        if (Test-FlowContentIn $Context $tip $upstream) { return (New-State '内容已进作者仓库' $true) }
    }
    elseif (Test-FlowContentIn $Context $tip 'refs/heads/custom') {
        return (New-State '内容已在 custom（提交号不同）' $true)
    }

    $pr = @($PullRequests) | Where-Object { $null -ne $_ -and $_.headRefName -eq $Branch } | Select-Object -First 1
    $where = if ($nearUpstream) { '作者仓库' } else { ' custom ' }
    if ($pr -and $pr.state -eq 'MERGED') { return (New-State "PR #$($pr.number) 已合并，但分支上还有未进${where}的改动") }
    if ($pr -and $pr.state -eq 'OPEN') { return (New-State "PR #$($pr.number) 审核中") }
    $contains = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('for-each-ref', '--count=1', '--contains', $tip, 'refs/remotes/') -AllowFail
    if ($contains.Code -eq 0 -and @($contains.Lines | Where-Object { $_ }).Count -gt 0) { return (New-State "已推送，未合入${where}".Trim()) }
    return (New-State "未合入${where}".Trim())
}

function Show-FlowStatus {
    [OutputType([void])]
    param([pscustomobject]$Context, [switch]$Offline)
    $hookProblems = @(Get-FushiHookProblems $Context.MainRoot)
    if ($hookProblems.Count -eq 0) {
        Write-Output '护栏：已安装，且与源码一致。'
    }
    else {
        Write-Output '!! 护栏有问题（在主 checkout 运行 pwsh -File tool/personal/flow.ps1 install-hooks）：'
        $hookProblems | ForEach-Object { Write-Output "   - $_" }
    }

    $pullRequests = @()
    $stateCache = @{}
    if (-not $Offline) {
        Update-FlowRemotes $Context | ForEach-Object { Write-Output "!! $_" }
        $pullRequests = @(Get-FlowAuthorPullRequests $Context)
    }

    Write-FlowSection '分支'
    $customLine = Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '-1', '--format=%h %cd %s', '--date=short', 'refs/heads/custom')
    Write-Output "custom：$(@($customLine)[0])"
    if (Test-FlowRef $Context 'refs/remotes/origin/custom') {
        $ahead = Get-FlowCount $Context 'refs/remotes/origin/custom..refs/heads/custom'
        $behind = Get-FlowCount $Context 'refs/heads/custom..refs/remotes/origin/custom'
        $hint = if ($ahead -gt 0) { '（有未备份到 GitHub 的提交；推送需用户同意）' } else { '' }
        Write-Output "相对 GitHub 上的 origin/custom：领先 $ahead，落后 $behind$hint"
    }
    if (Test-FlowRef $Context 'refs/remotes/upstream/develop') {
        $upstreamLine = Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('log', '-1', '--format=%h %cd', '--date=short', 'refs/remotes/upstream/develop')
        $pending = Get-FlowCount $Context 'refs/heads/custom..refs/remotes/upstream/develop'
        Write-Output "作者 upstream/develop（$(@($upstreamLine)[0])）：有 $pending 个提交尚未同步进 custom"
    }

    $worktrees = @(Get-FlowWorktrees $Context)
    $claims = @(Read-FlowClaims $Context)
    $staleClaims = [System.Collections.Generic.List[string]]::new()
    Write-FlowSection '进行中的任务（claim）'
    $rows = foreach ($claim in $claims) {
        $wt = $worktrees | Where-Object { $claim.Branch -and $_.Branch -eq $claim.Branch } | Select-Object -First 1
        $branchState = (Get-FlowBranchState $Context $claim.Branch $pullRequests $stateCache).Label
        if ($branchState -eq '无分支' -and -not $wt) {
            $staleClaims.Add($claim.Name)
            continue
        }
        $dirty = if ($wt) { Get-FlowDirtyCount $wt.Path } else { '-' }
        $statusText = if ($claim.Status.Length -gt 40) { $claim.Status.Substring(0, 40) + '…' } else { $claim.Status }
        [pscustomobject]@{ 任务 = $claim.Name; 分支状态 = $branchState; worktree = [bool]$wt; 未提交改动 = $dirty; claim状态 = $statusText }
    }
    if ($rows) { $rows | Format-Table -AutoSize | Out-String -Width 200 | Write-Output } else { Write-Output '（无）' }
    if ($staleClaims.Count -gt 0) {
        Write-Output "另有 $($staleClaims.Count) 个过期 claim（分支和 worktree 都已不存在），可用 flow cleanup 归档。"
    }

    Write-FlowSection '没有 claim 的 worktree'
    $orphans = foreach ($wt in $worktrees) {
        if (Test-FlowSamePath $wt.Path $Context.MainRoot) { continue }
        if ((Split-Path $wt.Path -Leaf) -eq $script:CandidateBuildDirName) { continue }
        if ($claims | Where-Object { $_.Branch -and $_.Branch -eq $wt.Branch }) { continue }
        $label = if ($wt.Branch) { $wt.Branch } else { "分离 HEAD $($wt.Head.Substring(0, 10))" }
        "$($wt.Path)  [$label，$((Get-FlowBranchState $Context $wt.Branch $pullRequests $stateCache).Label)]"
    }
    if ($orphans) { $orphans | ForEach-Object { Write-Output $_ } } else { Write-Output '（无）' }

    if ($pullRequests.Count -gt 0) {
        Write-FlowSection '给作者的 PR'
        foreach ($pr in $pullRequests) {
            $note = ''
            if ($pr.state -eq 'MERGED' -and (Test-FlowRef $Context "refs/heads/$($pr.headRefName)")) {
                $note = "，本地分支：$((Get-FlowBranchState $Context $pr.headRefName $pullRequests $stateCache).Label)（收尾见 flow cleanup）"
            }
            Write-Output "#$($pr.number) $($pr.state)  $($pr.headRefName)$note"
        }
    }
    elseif ($Offline) {
        Write-Output ''
        Write-Output '（离线模式：未 fetch，未查询 PR）'
    }

    Write-FlowSection '数据备份'
    $backups = @(Get-FlowBackups (Get-FlowBackupRoot ''))
    if ($backups.Count -eq 0) {
        Write-Output '暂无 flow 备份。'
    }
    else {
        $latest = $backups[0]
        Write-Output ("共 {0} 份，最新：{1}（{2:N0}MB）" -f $backups.Count, $latest.Name, ($latest.Length / 1MB))
    }
}
