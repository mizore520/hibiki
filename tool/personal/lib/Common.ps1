# flow.ps1 的公共函数：仓库定位、git 调用、claim / worktree 读取。
# 由 flow.ps1 dot-source；依赖 $script:PersonalRoot。

$script:Utf8NoBom = [System.Text.UTF8Encoding]::new($false)
$script:CandidateBuildDirName = '_candidate-build'

# 运行 git，分开返回 stdout 行与 stderr 文本；失败时抛出，除非 -AllowFail。
function Invoke-FlowGit {
    [OutputType([pscustomobject])]
    param(
        [string]$Dir,
        [string[]]$Arguments,
        [switch]$AllowFail
    )
    $previous = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        $raw = & git -C $Dir @Arguments 2>&1
        $code = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previous
    }
    $stdout = @($raw | Where-Object { $_ -isnot [System.Management.Automation.ErrorRecord] } | ForEach-Object { "$_" })
    $stderr = (@($raw | Where-Object { $_ -is [System.Management.Automation.ErrorRecord] } | ForEach-Object { "$_" }) -join "`n")
    if ($code -ne 0 -and -not $AllowFail) {
        throw "git $($Arguments -join ' ') 失败（退出码 $code）：`n$stderr`n$($stdout -join "`n")"
    }
    return [pscustomobject]@{ Code = $code; Lines = $stdout; Error = $stderr }
}

function Get-FlowGitLines {
    [OutputType([string[]])]
    param([string]$Dir, [string[]]$Arguments)
    return @((Invoke-FlowGit -Dir $Dir -Arguments $Arguments).Lines)
}

function Get-FlowContext {
    [OutputType([pscustomobject])]
    param([string]$RepoPath)
    $common = (Invoke-FlowGit -Dir $RepoPath -Arguments @('rev-parse', '--path-format=absolute', '--git-common-dir')).Lines[0].Trim()
    $mainRoot = Split-Path -Parent $common
    $coord = Join-Path $mainRoot '.worktrees\coordination'
    return [pscustomobject]@{
        MainRoot        = $mainRoot
        CommonDir       = $common
        WorktreesDir    = Join-Path $mainRoot '.worktrees'
        ClaimsDir       = Join-Path $coord 'claims'
        ClaimsDoneDir   = Join-Path $coord 'claims\done'
        HandoffsDir     = Join-Path $coord 'handoffs'
        HandoffsDoneDir = Join-Path $coord 'handoffs\done'
    }
}

function Test-FlowRef {
    [OutputType([bool])]
    param([pscustomobject]$Context, [string]$Ref)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('rev-parse', '-q', '--verify', "$Ref^{commit}") -AllowFail
    return ($result.Code -eq 0)
}

function Get-FlowRefSha {
    [OutputType([string])]
    param([pscustomobject]$Context, [string]$Ref)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('rev-parse', '-q', '--verify', "$Ref^{commit}") -AllowFail
    if ($result.Code -ne 0) { return '' }
    return $result.Lines[0].Trim()
}

function Test-FlowAncestor {
    [OutputType([bool])]
    param([pscustomobject]$Context, [string]$Ancestor, [string]$Descendant)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge-base', '--is-ancestor', $Ancestor, $Descendant) -AllowFail
    return ($result.Code -eq 0)
}

function Get-FlowCount {
    [OutputType([int])]
    param([pscustomobject]$Context, [string]$Range)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('rev-list', '--count', $Range) -AllowFail
    if ($result.Code -ne 0) { return -1 }
    return [int]$result.Lines[0]
}

# `git cherry <上游> <分支>`：返回分支上内容尚未进入上游（按补丁等价判断）的提交数。
function Get-FlowUnlandedCount {
    [OutputType([int])]
    param([pscustomobject]$Context, [string]$Upstream, [string]$Branch)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('cherry', $Upstream, $Branch) -AllowFail
    if ($result.Code -ne 0) { return -1 }
    return @($result.Lines | Where-Object { $_ -like '+*' }).Count
}

function Test-FlowApproved {
    [OutputType([bool])]
    param([string]$Action)
    $value = ",$($env:FUSHI_APPROVE),"
    return $value.Contains(",$Action,")
}

function Get-FlowWorktrees {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context)
    $items = [System.Collections.Generic.List[pscustomobject]]::new()
    $current = $null
    foreach ($line in (Get-FlowGitLines -Dir $Context.MainRoot -Arguments @('worktree', 'list', '--porcelain'))) {
        if ($line -like 'worktree *') {
            if ($current) { $items.Add([pscustomobject]$current) }
            $current = [ordered]@{ Path = [System.IO.Path]::GetFullPath($line.Substring(9)); Head = ''; Branch = ''; Detached = $false }
        }
        elseif ($line -like 'HEAD *') { $current.Head = $line.Substring(5) }
        elseif ($line -like 'branch refs/heads/*') { $current.Branch = $line.Substring(18) }
        elseif ($line -eq 'detached') { $current.Detached = $true }
    }
    if ($current) { $items.Add([pscustomobject]$current) }
    return $items.ToArray()
}

function Test-FlowSamePath {
    [OutputType([bool])]
    param([string]$A, [string]$B)
    if (-not $A -or -not $B) { return $false }
    $left = [System.IO.Path]::GetFullPath($A).TrimEnd('\', '/')
    $right = [System.IO.Path]::GetFullPath($B).TrimEnd('\', '/')
    return [string]::Equals($left, $right, [System.StringComparison]::OrdinalIgnoreCase)
}

# 已跟踪文件的改动 + 未跟踪文件（不含被忽略的）。
function Get-FlowDirtyCount {
    [OutputType([int])]
    param([string]$Path)
    $result = Invoke-FlowGit -Dir $Path -Arguments @('status', '--porcelain') -AllowFail
    if ($result.Code -ne 0) { return -1 }
    return @($result.Lines | Where-Object { $_ }).Count
}

# .codex-test 下被忽略的本机证据文件数（删除 worktree 会一并删掉它们）。
function Get-FlowEvidenceCount {
    [OutputType([int])]
    param([string]$Path)
    $result = Invoke-FlowGit -Dir $Path -Arguments @('ls-files', '--others', '--ignored', '--exclude-standard', '--', '.codex-test') -AllowFail
    if ($result.Code -ne 0) { return 0 }
    return @($result.Lines | Where-Object { $_ }).Count
}

function Read-FlowClaims {
    [OutputType([pscustomobject[]])]
    param([pscustomobject]$Context)
    if (-not (Test-Path -LiteralPath $Context.ClaimsDir)) { return @() }
    $claims = foreach ($file in (Get-ChildItem -LiteralPath $Context.ClaimsDir -File -Filter '*.json')) {
        $data = $null
        try { $data = Get-Content -LiteralPath $file.FullName -Raw | ConvertFrom-Json } catch { $data = $null }
        $branch = ''
        $worktree = ''
        $status = ''
        if ($data) {
            if ($data.PSObject.Properties['branch']) { $branch = [string]$data.branch }
            if ($data.PSObject.Properties['worktree']) { $worktree = [string]$data.worktree }
            if ($data.PSObject.Properties['status']) { $status = [string]$data.status }
        }
        [pscustomobject]@{ Name = $file.BaseName; File = $file.FullName; Data = $data; Branch = $branch; Worktree = $worktree; Status = $status }
    }
    return @($claims)
}

function Save-FlowJson {
    [OutputType([void])]
    param([string]$Path, [object]$Data)
    [System.IO.File]::WriteAllText($Path, ($Data | ConvertTo-Json -Depth 6), $script:Utf8NoBom)
}

# 把 claim（以及同名交接单）移到 done/；不删除任何内容。
function Move-FlowClaimToDone {
    [OutputType([string])]
    param([pscustomobject]$Context, [pscustomobject]$Claim, [string]$FinalStatus)
    if ($Claim.Data -and $FinalStatus) {
        $Claim.Data | Add-Member -NotePropertyName status -NotePropertyValue $FinalStatus -Force
        $Claim.Data | Add-Member -NotePropertyName closedAt -NotePropertyValue (Get-Date).ToString('s') -Force
        Save-FlowJson -Path $Claim.File -Data $Claim.Data
    }
    [void](New-Item -ItemType Directory -Force -Path $Context.ClaimsDoneDir)
    Move-Item -LiteralPath $Claim.File -Destination (Join-Path $Context.ClaimsDoneDir (Split-Path $Claim.File -Leaf)) -Force
    $handoff = Join-Path $Context.HandoffsDir "$($Claim.Name).md"
    if (Test-Path -LiteralPath $handoff) {
        [void](New-Item -ItemType Directory -Force -Path $Context.HandoffsDoneDir)
        Move-Item -LiteralPath $handoff -Destination (Join-Path $Context.HandoffsDoneDir "$($Claim.Name).md") -Force
    }
    return $Claim.Name
}

function Get-FlowClaimForBranch {
    [OutputType([pscustomobject])]
    param([pscustomobject]$Context, [string]$Branch)
    return (Read-FlowClaims $Context | Where-Object { $_.Branch -eq $Branch } | Select-Object -First 1)
}

function Write-FlowSection {
    [OutputType([void])]
    param([string]$Title)
    Write-Output ''
    Write-Output "== $Title =="
}
