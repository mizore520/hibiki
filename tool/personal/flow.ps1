<#
.SYNOPSIS
  Fushi 个人版流程脚本入口。场景说明见 docs/personal/WORKFLOWS.md。

.DESCRIPTION
  status                      汇总护栏、分支、任务、PR、备份状态（-Offline 不 fetch、不查 PR）
  start <任务名>              从 custom 建 codex/<任务名>-<日期> worktree、claim 和交接单
                              （-Description 任务说明，-Agent 代理名，-Setup 顺带运行 setup_worktree）
  adopt <分支>                采用预览：提交、改动、冲突、核对项（只读）
  adopt <分支> -Apply -Expect <预览里的尖端提交>
                              合入 custom（需 FUSHI_APPROVE=adopt；-Message 合并说明，-KeepClaim 不归档 claim）
  cleanup                     列出可收尾的 worktree / 分支 / claim / 空目录（只读）
  cleanup -Apply -Items 'W1=<目标>,C2=<目标>'
                              按「编号=目标」执行（删除类需 FUSHI_APPROVE=cleanup）
  backup [-Reason 说明]       备份数据库与设置到 %LOCALAPPDATA%\FushiBackups，保留最近 2 份
  backup -List                列出已有备份
  install-hooks / check-hooks 安装、检查护栏钩子（G1–G5）

.EXAMPLE
  pwsh -File tool/personal/flow.ps1 status
#>
#Requires -Version 7.0
[CmdletBinding()]
param(
    [Parameter(Position = 0, Mandatory = $true)]
    [ValidateSet('status', 'start', 'adopt', 'cleanup', 'backup', 'install-hooks', 'check-hooks')]
    [string]$Command,

    # start 的任务名；adopt 的分支名。
    [Parameter(Position = 1)]
    [string]$Name = '',

    [string]$Description = '',
    [string]$Agent = '',
    [switch]$Setup,
    [switch]$Apply,
    [string[]]$Items = @(),
    [string]$Message = '',
    # adopt -Apply：预览里显示的分支尖端提交号，分支之后有变化就拒绝。
    [string]$Expect = '',
    [switch]$KeepClaim,
    [switch]$Offline,
    [switch]$List,
    [string]$Reason = '',

    # 测试用：备份时的数据根与备份目录。
    [string]$DataRoot = '',
    [string]$BackupRoot = '',

    # 目标仓库（任一 worktree 均可）；默认是本脚本所在仓库。测试时指向临时仓库。
    [string]$Repo = (Join-Path $PSScriptRoot '..\..')
)

$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false
Set-StrictMode -Version Latest
# git 输出 UTF-8；中文控制台默认代码页会把提交说明和文件名解成乱码，而预览要原样给用户看。
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)
$OutputEncoding = [System.Text.UTF8Encoding]::new($false)

$script:PersonalRoot = $PSScriptRoot
. (Join-Path $PSScriptRoot 'lib\Common.ps1')
. (Join-Path $PSScriptRoot 'lib\Hooks.ps1')
. (Join-Path $PSScriptRoot 'lib\Backup.ps1')
. (Join-Path $PSScriptRoot 'lib\Status.ps1')
. (Join-Path $PSScriptRoot 'lib\Tasks.ps1')

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
    'status' {
        Show-FlowStatus (Get-FlowContext $Repo) -Offline:$Offline
    }
    'start' {
        if (-not $Name) { throw '用法：flow.ps1 start <任务名> -Description "任务说明" -Agent "Claude Code"' }
        Start-FlowTask (Get-FlowContext $Repo) $Name $Description $Agent -Setup:$Setup
    }
    'adopt' {
        $context = Get-FlowContext $Repo
        if ($Apply) {
            Invoke-FlowAdopt $context $Name $Expect $Message -KeepClaim:$KeepClaim
        }
        else {
            Show-FlowAdoptPlan (Get-FlowAdoptPlan $context $Name)
        }
    }
    'cleanup' {
        if ($Name) {
            throw "cleanup 不接受位置参数「$Name」。多个项要写在同一个引号里、用逗号分隔：-Items 'W1=<目标>,C2=<目标>'"
        }
        $context = Get-FlowContext $Repo
        $pullRequests = @()
        if (-not $Offline) { $pullRequests = @(Get-FlowAuthorPullRequests $context) }
        $cleanupItems = @(Get-FlowCleanupItems $context $pullRequests)
        if ($Apply) {
            Invoke-FlowCleanup $context $cleanupItems $Items
        }
        else {
            Show-FlowCleanupItems $cleanupItems
        }
    }
    'backup' {
        if ($List) {
            Show-FlowBackups $BackupRoot
        }
        else {
            New-FlowBackup (Get-FlowContext $Repo) $Reason $DataRoot $BackupRoot
        }
    }
}
