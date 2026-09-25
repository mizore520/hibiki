<#
.SYNOPSIS
  Fushi 个人版流程脚本入口。

.DESCRIPTION
  子命令：
    install-hooks  把 tool/personal/githooks/ 的护栏钩子（G1–G5）安装到
                   <git-common-dir>/hooks；所有 worktree 共用这一份。
    check-hooks    检查钩子是否已安装、是否与当前源码一致；不一致时退出码 1。

  护栏规则见 docs/personal/PERSONAL_FORK_RULES.md 第 6 节。

.EXAMPLE
  pwsh -File tool/personal/flow.ps1 install-hooks
#>
[CmdletBinding()]
param(
    [Parameter(Position = 0, Mandatory = $true)]
    [ValidateSet('install-hooks', 'check-hooks')]
    [string]$Command,

    # 目标仓库（任一 worktree 均可）；默认是本脚本所在仓库。测试时指向临时仓库。
    [string]$Repo = (Join-Path $PSScriptRoot '..\..')
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$script:HookSourceDir = Join-Path $PSScriptRoot 'githooks'
# 源文件名 -> 安装后的文件名
$script:HookFiles = [ordered]@{
    'fushi-lib.sh'          = 'fushi-lib.sh'
    'personal-paths.txt'    = 'fushi-personal-paths.txt'
    'reference-transaction' = 'reference-transaction'
    'pre-push'              = 'pre-push'
    'pre-commit'            = 'pre-commit'
}
$script:StampFileName = 'fushi-hooks.version'
$script:OwnershipMarker = 'Fushi'
$script:Utf8NoBom = [System.Text.UTF8Encoding]::new($false)

function Get-HooksDirectory {
    [OutputType([string])]
    param([string]$RepoPath)
    $common = git -C $RepoPath rev-parse --path-format=absolute --git-common-dir
    if ($LASTEXITCODE -ne 0 -or -not $common) {
        throw "不是 git 仓库：$RepoPath"
    }
    return (Join-Path $common.Trim() 'hooks')
}

function Get-NormalizedText {
    [OutputType([string])]
    param([string]$Path)
    # 钩子由 Git for Windows 的 sh 执行，必须是 LF。
    return [System.IO.File]::ReadAllText($Path, $script:Utf8NoBom).Replace("`r`n", "`n")
}

function Get-ContentStamp {
    [OutputType([string])]
    param([string[]]$Paths)
    $builder = [System.Text.StringBuilder]::new()
    foreach ($path in $Paths) {
        if (-not (Test-Path -LiteralPath $path)) {
            [void]$builder.Append("<missing>`n")
            continue
        }
        [void]$builder.Append((Get-NormalizedText $path)).Append("`n<end>`n")
    }
    $bytes = $script:Utf8NoBom.GetBytes($builder.ToString())
    $hash = [System.Security.Cryptography.SHA256]::HashData($bytes)
    return [System.Convert]::ToHexString($hash).ToLowerInvariant()
}

function Get-SourceStamp {
    [OutputType([string])]
    param()
    $paths = foreach ($name in $script:HookFiles.Keys) { Join-Path $script:HookSourceDir $name }
    return Get-ContentStamp $paths
}

function Get-InstalledStamp {
    [OutputType([string])]
    param([string]$HooksDir)
    $paths = foreach ($name in $script:HookFiles.Values) { Join-Path $HooksDir $name }
    return Get-ContentStamp $paths
}

function Assert-NoHooksPathOverride {
    [OutputType([void])]
    param([string]$RepoPath)
    $override = git -C $RepoPath config --get core.hooksPath
    if ($override) {
        throw "core.hooksPath 被设置为 '$override'，.git/hooks 里的护栏不会生效。先确认来源并取消该设置。"
    }
}

# G2 靠远端跟踪分支判断“已推送”。个人仓库的 origin 默认只抓 custom，推送
# codex/*、pr/* 时不会留下 refs/remotes/origin/...，所以补上这两类抓取规则。
function Get-MissingOriginRefspecs {
    [OutputType([string[]])]
    param([string]$RepoPath)
    $remotes = @(git -C $RepoPath remote)
    if ($remotes -notcontains 'origin') {
        return @()
    }
    $existing = @(git -C $RepoPath config --get-all remote.origin.fetch)
    if ($existing -contains '+refs/heads/*:refs/remotes/origin/*') {
        return @()
    }
    $wanted = @(
        '+refs/heads/codex/*:refs/remotes/origin/codex/*'
        '+refs/heads/pr/*:refs/remotes/origin/pr/*'
    )
    return @($wanted | Where-Object { $existing -notcontains $_ })
}

function Install-FushiHooks {
    [OutputType([void])]
    param([string]$RepoPath)
    Assert-NoHooksPathOverride $RepoPath
    $hooksDir = Get-HooksDirectory $RepoPath
    [void](New-Item -ItemType Directory -Force -Path $hooksDir)

    foreach ($entry in $script:HookFiles.GetEnumerator()) {
        $source = Join-Path $script:HookSourceDir $entry.Key
        $target = Join-Path $hooksDir $entry.Value
        if ((Test-Path -LiteralPath $target) -and
            -not ([System.IO.File]::ReadAllText($target).Contains($script:OwnershipMarker))) {
            $backup = "$target.pre-fushi.bak"
            Copy-Item -LiteralPath $target -Destination $backup -Force
            Write-Warning "已有非 Fushi 的 $($entry.Value)，已备份到 $backup，请人工确认是否需要合并。"
        }
        # 先写临时文件再整体替换：其他 worktree 此刻运行的钩子不会读到半截文件。
        $staging = "$target.fushi-new"
        [System.IO.File]::WriteAllText($staging, (Get-NormalizedText $source), $script:Utf8NoBom)
        Move-Item -LiteralPath $staging -Destination $target -Force
    }

    $stamp = Get-SourceStamp
    [System.IO.File]::WriteAllText((Join-Path $hooksDir $script:StampFileName), "$stamp`n", $script:Utf8NoBom)
    Write-Output "已安装 Fushi 护栏钩子到 $hooksDir（版本 $($stamp.Substring(0, 12))）。"

    foreach ($spec in (Get-MissingOriginRefspecs $RepoPath)) {
        git -C $RepoPath config --add remote.origin.fetch $spec
        Write-Output "已为 origin 添加抓取规则 $spec（护栏据此识别已推送的分支）。"
    }
}

function Get-FushiHookProblems {
    [OutputType([string[]])]
    param([string]$RepoPath)
    $problems = [System.Collections.Generic.List[string]]::new()
    $override = git -C $RepoPath config --get core.hooksPath
    if ($override) {
        $problems.Add("core.hooksPath = '$override'，护栏钩子不会被执行。")
    }
    $hooksDir = Get-HooksDirectory $RepoPath
    foreach ($name in $script:HookFiles.Values) {
        if (-not (Test-Path -LiteralPath (Join-Path $hooksDir $name))) {
            $problems.Add("缺少 $name。")
        }
    }
    if ($problems.Count -eq 0 -and (Get-InstalledStamp $hooksDir) -ne (Get-SourceStamp)) {
        $problems.Add('已安装的钩子与当前源码不一致（源码更新过或已安装副本被改动）。')
    }
    foreach ($spec in (Get-MissingOriginRefspecs $RepoPath)) {
        $problems.Add("origin 缺少抓取规则 $spec，删除已推送分支时会被误拦。")
    }
    return $problems.ToArray()
}

switch ($Command) {
    'install-hooks' {
        Install-FushiHooks $Repo
    }
    'check-hooks' {
        $problems = @(Get-FushiHookProblems $Repo)
        if ($problems.Count -eq 0) {
            Write-Output 'Fushi 护栏钩子：已安装，且与源码一致。'
            exit 0
        }
        Write-Output 'Fushi 护栏钩子有问题（运行 tool/personal/flow.ps1 install-hooks 修复）：'
        $problems | ForEach-Object { Write-Output "  - $_" }
        exit 1
    }
}
