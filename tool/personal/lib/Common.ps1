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

# 分支的内容是否已全部在目标里：预演合并，结果树与目标的树相同即说明分支不再带来任何改动。
# 比按提交 SHA 或 git cherry 判断更可靠：squash 合并、合并提交里夹带的改动都能判对。
function Test-FlowContentIn {
    [OutputType([bool])]
    param([pscustomobject]$Context, [string]$Branch, [string]$Target)
    $merge = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('merge-tree', '--write-tree', '--no-messages', $Target, $Branch) -AllowFail
    if ($merge.Code -ne 0) { return $false }
    $targetTree = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('rev-parse', "$Target^{tree}") -AllowFail
    if ($targetTree.Code -ne 0) { return $false }
    return ($merge.Lines[0].Trim() -eq $targetTree.Lines[0].Trim())
}

# 某分支第一父链上的全部提交。分支尖端落在这条链上，说明它只是从这里拉出来、自己没有提交。
function Get-FlowFirstParentSet {
    [OutputType([System.Collections.Generic.HashSet[string]])]
    param([pscustomobject]$Context, [string]$Ref)
    $set = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
    $result = Invoke-FlowGit -Dir $Context.MainRoot -Arguments @('rev-list', '--first-parent', $Ref) -AllowFail
    if ($result.Code -eq 0) { foreach ($sha in $result.Lines) { [void]$set.Add($sha.Trim()) } }
    return , $set
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

# 被 git 忽略、删除 worktree 时会一并删掉的非构建内容（.codex-test 证据、*.local.md、
# 本机笔记等）。目录按一项计；构建产物和依赖缓存不算。
$script:BuildArtifactPattern = '(^|/)(\.dart_tool|build|dist|bin|obj|prebuilt|__pycache__|\.build-cache|node_modules|\.gradle|\.idea|\.vs|ephemeral|\.plugin_symlinks|\.pub-cache|\.pub)(/|$)|(^|/)\.flutter-plugins(-dependencies)?$|(^|/)pubspec_overrides\.yaml$|\.iml$|(^|/)io/flutter/plugins(/|$)|GeneratedPluginRegistrant\.(java|h|m|swift|cc|cpp)$|(^|/)local\.properties$|(^|/)Generated\.xcconfig$|(^|/)flutter_export_environment\.sh$'
function Get-FlowIgnoredItems {
    [OutputType([string[]])]
    param([string]$Path)
    $result = Invoke-FlowGit -Dir $Path -Arguments @('-c', 'core.quotepath=false', 'ls-files', '--others', '--ignored', '--exclude-standard', '--directory') -AllowFail
    if ($result.Code -ne 0) { return @() }
    return @($result.Lines | Where-Object { $_ -and $_ -notmatch $script:BuildArtifactPattern })
}

# worktree 是否还在用：有未提交改动，或有进行中的 merge / cherry-pick / revert / rebase。
function Test-FlowWorktreeBusy {
    [OutputType([bool])]
    param([string]$Path)
    if ((Get-FlowDirtyCount $Path) -ne 0) { return $true }
    $gitDir = Invoke-FlowGit -Dir $Path -Arguments @('rev-parse', '--path-format=absolute', '--git-dir') -AllowFail
    if ($gitDir.Code -ne 0) { return $true }
    foreach ($marker in @('MERGE_HEAD', 'CHERRY_PICK_HEAD', 'REVERT_HEAD', 'rebase-merge', 'rebase-apply')) {
        if (Test-Path -LiteralPath (Join-Path $gitDir.Lines[0].Trim() $marker)) { return $true }
    }
    return $false
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
    Move-Item -LiteralPath $Claim.File -Destination (Get-FlowFreeDestination $Context.ClaimsDoneDir $Claim.Name '.json')
    $handoff = Join-Path $Context.HandoffsDir "$($Claim.Name).md"
    if (Test-Path -LiteralPath $handoff) {
        [void](New-Item -ItemType Directory -Force -Path $Context.HandoffsDoneDir)
        Move-Item -LiteralPath $handoff -Destination (Get-FlowFreeDestination $Context.HandoffsDoneDir $Claim.Name '.md')
    }
    return $Claim.Name
}

# done/ 里已有同名文件时加时间后缀，不覆盖旧记录。
function Get-FlowFreeDestination {
    [OutputType([string])]
    param([string]$Dir, [string]$BaseName, [string]$Extension)
    $candidate = Join-Path $Dir "$BaseName$Extension"
    if (-not (Test-Path -LiteralPath $candidate)) { return $candidate }
    return (Join-Path $Dir "$BaseName.$(Get-Date -Format 'yyyyMMdd-HHmmss')$Extension")
}

function Get-FlowClaimForBranch {
    [OutputType([pscustomobject])]
    param([pscustomobject]$Context, [string]$Branch)
    return (Read-FlowClaims $Context | Where-Object { $_.Branch -eq $Branch } | Select-Object -First 1)
}

# 路径模式（相对仓库根，/ 分隔）：以 / 结尾表示目录前缀；* 匹配一段内任意字符；
# **/ 匹配零层或多层目录（a/**/b 也匹配 a/b），其余位置的 ** 匹配任意字符；其余精确匹配。
function ConvertTo-FlowPathRegex {
    [OutputType([string])]
    param([string]$Pattern)
    if ($Pattern.EndsWith('/')) { return '^' + [regex]::Escape($Pattern) }
    $escaped = [regex]::Escape($Pattern).Replace('\*\*/', '<ANYDIRS>').Replace('\*\*', '<ANY>').Replace('\*', '[^/]*')
    $escaped = $escaped.Replace('<ANYDIRS>', '(.*/)?').Replace('<ANY>', '.*')
    return "^$escaped$"
}

function Test-FlowPathMatch {
    [OutputType([bool])]
    param([string]$Path, [string[]]$Patterns)
    foreach ($pattern in $Patterns) {
        if ($Path -cmatch (ConvertTo-FlowPathRegex $pattern)) { return $true }
    }
    return $false
}

function Write-FlowSection {
    [OutputType([void])]
    param([string]$Title)
    Write-Output ''
    Write-Output "== $Title =="
}
