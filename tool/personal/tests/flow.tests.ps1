<#
.SYNOPSIS
  在临时仓库里演练 flow.ps1 的 status / start / adopt / cleanup / backup，不接触真实仓库和真实数据。

.EXAMPLE
  pwsh -File tool/personal/tests/flow.tests.ps1
#>
[CmdletBinding()]
param([switch]$KeepTemp)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$script:Flow = Join-Path $PSScriptRoot '..\flow.ps1'
$script:Root = Join-Path ([System.IO.Path]::GetTempPath()) ('fushi-flow-test-' + [guid]::NewGuid().ToString('N').Substring(0, 8))
$script:Failures = [System.Collections.Generic.List[string]]::new()
$script:PassedCount = 0
$script:Work = Join-Path $script:Root 'work'

function Invoke-TestGit {
    [OutputType([string])]
    param([string]$Dir, [string[]]$Arguments, [string]$Approve = '')
    $previous = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    if ($Approve) { $env:FUSHI_APPROVE = $Approve }
    try {
        $output = & git -C $Dir @Arguments 2>&1 | ForEach-Object { "$_" }
        $code = $LASTEXITCODE
    }
    finally {
        Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
        $ErrorActionPreference = $previous
    }
    if ($code -ne 0) { throw "准备步骤失败：git $($Arguments -join ' ')`n$($output -join "`n")" }
    return ($output -join "`n")
}

function Invoke-Flow {
    [OutputType([pscustomobject])]
    param([string[]]$Arguments, [string]$Approve = '')
    if ($Approve) { $env:FUSHI_APPROVE = $Approve } else { Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue }
    try {
        $output = & pwsh -NoProfile -File $script:Flow @Arguments -Repo $script:Work 2>&1 | ForEach-Object { "$_" }
        $code = $LASTEXITCODE
    }
    finally {
        Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
    }
    return [pscustomobject]@{ Code = $code; Output = ($output -join "`n") }
}

function Assert-Check {
    [OutputType([void])]
    param([string]$Name, [bool]$Condition, [string]$Detail = '')
    if ($Condition) {
        $script:PassedCount++
        Write-Host "  [通过] $Name"
        return
    }
    $script:Failures.Add("$Name`n$Detail")
    Write-Host "  [失败] $Name" -ForegroundColor Red
}

function Get-CustomSha {
    [OutputType([string])]
    param()
    return (Invoke-TestGit $script:Work @('rev-parse', 'refs/heads/custom')).Trim()
}

function Write-TestFile {
    [OutputType([void])]
    param([string]$Path, [string]$Content)
    [void](New-Item -ItemType Directory -Force -Path (Split-Path $Path -Parent))
    [System.IO.File]::WriteAllText($Path, $Content)
}

# 从 cleanup 清单里按目标路径/名字找编号。
function Find-CleanupId {
    [OutputType([string])]
    param([string]$Output, [string]$TargetPart)
    foreach ($line in ($Output -split "`n")) {
        if ($line -match '^\[(?<id>[A-Z]\d+)\] (可清理|只报告)  (?<target>.+?)  —' -and $Matches['target'].Contains($TargetPart)) {
            return $Matches['id']
        }
    }
    return ''
}

try {
    [void](New-Item -ItemType Directory -Path $script:Root)
    $upstream = Join-Path $script:Root 'upstream.git'
    $origin = Join-Path $script:Root 'origin.git'
    Invoke-TestGit $script:Root @('init', '-q', '--bare', '-b', 'develop', $upstream) | Out-Null
    Invoke-TestGit $script:Root @('init', '-q', '--bare', '-b', 'custom', $origin) | Out-Null
    Invoke-TestGit $script:Root @('init', '-q', '-b', 'develop', $script:Work) | Out-Null
    foreach ($pair in @(@('user.name', 'flow-test'), @('user.email', 'flow-test@example.invalid'), @('commit.gpgsign', 'false'), @('core.autocrlf', 'false'))) {
        Invoke-TestGit $script:Work @('config', $pair[0], $pair[1]) | Out-Null
    }
    Write-TestFile (Join-Path $script:Work 'README.md') "base`n"
    Write-TestFile (Join-Path $script:Work '.gitignore') ".worktrees/`n.codex-test/`n"
    Invoke-TestGit $script:Work @('add', 'README.md', '.gitignore') | Out-Null
    Invoke-TestGit $script:Work @('commit', '-q', '-m', 'base') | Out-Null
    Invoke-TestGit $script:Work @('remote', 'add', 'upstream', $upstream) | Out-Null
    Invoke-TestGit $script:Work @('push', '-q', 'upstream', 'develop') | Out-Null
    Invoke-TestGit $script:Work @('checkout', '-q', '-b', 'custom') | Out-Null
    Invoke-TestGit $script:Work @('remote', 'add', 'origin', $origin) | Out-Null
    Invoke-TestGit $script:Work @('push', '-q', 'origin', 'custom') | Out-Null
    Invoke-TestGit $script:Work @('fetch', '-q', 'upstream') | Out-Null
    $install = Invoke-Flow @('install-hooks')
    if ($install.Code -ne 0) { throw "install-hooks 失败：$($install.Output)" }

    Write-Host 'status'
    $status = Invoke-Flow @('status', '-Offline')
    Assert-Check 'status -Offline 正常输出护栏和分支' ($status.Code -eq 0 -and $status.Output -match '护栏：已安装' -and $status.Output -match 'custom：[0-9a-f]{7}') $status.Output

    Write-Host 'start'
    $today = Get-Date -Format 'yyyyMMdd'
    $start = Invoke-Flow @('start', 'demo', '-Description', '演示任务', '-Agent', 'flow-test')
    $demoPath = Join-Path $script:Work ".worktrees\demo-$today"
    $claimsDir = Join-Path $script:Work '.worktrees\coordination\claims'
    $handoffsDir = Join-Path $script:Work '.worktrees\coordination\handoffs'
    Assert-Check 'start 建出 worktree、claim 和交接单' ($start.Code -eq 0 -and (Test-Path $demoPath) -and (Test-Path (Join-Path $claimsDir "demo-$today.json")) -and (Test-Path (Join-Path $handoffsDir "demo-$today.md"))) $start.Output
    $claim = Get-Content (Join-Path $claimsDir "demo-$today.json") -Raw | ConvertFrom-Json
    Assert-Check 'claim 记录分支与基线' ($claim.branch -eq "codex/demo-$today" -and $claim.baseSha -eq (Get-CustomSha)) ($claim | ConvertTo-Json)
    Assert-Check '重复 start 同名任务被拒绝' ((Invoke-Flow @('start', 'demo')).Code -ne 0)
    Assert-Check '非法任务名被拒绝' ((Invoke-Flow @('start', 'Bad Name')).Code -ne 0)

    Write-Host 'adopt'
    Write-TestFile (Join-Path $demoPath 'feature.txt') "feature`n"
    Invoke-TestGit $demoPath @('add', 'feature.txt') | Out-Null
    Invoke-TestGit $demoPath @('commit', '-q', '-m', 'demo feature') | Out-Null
    $before = Get-CustomSha
    $preview = Invoke-Flow @('adopt', "codex/demo-$today")
    Assert-Check 'adopt 预览列出提交与同意提示，且不改 custom' ($preview.Code -eq 0 -and $preview.Output -match 'demo feature' -and $preview.Output -match '用户明确同意后执行' -and (Get-CustomSha) -eq $before) $preview.Output
    $noApproval = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply')
    Assert-Check '未同意时 adopt -Apply 被拒绝' ($noApproval.Code -ne 0 -and (Get-CustomSha) -eq $before) $noApproval.Output
    $adopted = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply', '-Message', 'Merge demo into custom') -Approve 'adopt'
    $parents = (Invoke-TestGit $script:Work @('log', '-1', '--format=%P', 'refs/heads/custom')).Trim() -split ' '
    Assert-Check '同意后 adopt 生成合并提交' ($adopted.Code -eq 0 -and $parents.Count -eq 2 -and (Get-CustomSha) -ne $before) $adopted.Output
    Assert-Check 'adopt 后 claim 与交接单归档到 done/' (-not (Test-Path (Join-Path $claimsDir "demo-$today.json")) -and (Test-Path (Join-Path $claimsDir "done\demo-$today.json")) -and (Test-Path (Join-Path $handoffsDir "done\demo-$today.md")))

    Invoke-Flow @('start', 'conflict', '-Description', '冲突演示') | Out-Null
    $conflictPath = Join-Path $script:Work ".worktrees\conflict-$today"
    Write-TestFile (Join-Path $conflictPath 'README.md') "task side`n"
    Invoke-TestGit $conflictPath @('commit', '-q', '-am', 'task readme') | Out-Null
    Write-TestFile (Join-Path $script:Work 'README.md') "custom side`n"
    Invoke-TestGit $script:Work @('commit', '-q', '-am', 'custom readme') -Approve 'adopt' | Out-Null
    $before = Get-CustomSha
    $conflictPreview = Invoke-Flow @('adopt', "codex/conflict-$today")
    Assert-Check 'adopt 预览发现冲突文件' ($conflictPreview.Output -match '会产生冲突' -and $conflictPreview.Output -match 'README\.md') $conflictPreview.Output
    $conflictApply = Invoke-Flow @('adopt', "codex/conflict-$today", '-Apply') -Approve 'adopt'
    $mergeHead = Test-Path (Join-Path $script:Work '.git\MERGE_HEAD')
    Assert-Check '有冲突时即使同意也拒绝，custom 不变且没有残留合并状态' ($conflictApply.Code -ne 0 -and (Get-CustomSha) -eq $before -and -not $mergeHead) $conflictApply.Output

    Invoke-Flow @('start', 'dirty', '-Description', '脏工作区演示') | Out-Null
    $dirtyPath = Join-Path $script:Work ".worktrees\dirty-$today"
    Write-TestFile (Join-Path $dirtyPath 'done.txt') "done`n"
    Invoke-TestGit $dirtyPath @('add', 'done.txt') | Out-Null
    Invoke-TestGit $dirtyPath @('commit', '-q', '-m', 'dirty task') | Out-Null
    Write-TestFile (Join-Path $dirtyPath 'uncommitted.txt') "wip`n"
    $dirtyApply = Invoke-Flow @('adopt', "codex/dirty-$today", '-Apply') -Approve 'adopt'
    Assert-Check '任务 worktree 有未提交改动时拒绝采用' ($dirtyApply.Code -ne 0 -and (Get-CustomSha) -eq $before -and $dirtyApply.Output -match '未提交') $dirtyApply.Output

    Write-Host 'cleanup'
    # 已合入但 worktree 仍在：模拟 adopt 之后的收尾对象；再造过期 claim、空目录和非空残留目录。
    Write-TestFile (Join-Path $claimsDir 'stale-task.json') '{"task":"old","branch":"codex/gone-20200101","worktree":"x","status":"active"}'
    [void](New-Item -ItemType Directory -Force -Path (Join-Path $script:Work '.worktrees\empty-leftover'))
    Write-TestFile (Join-Path $script:Work '.worktrees\leftover-with-files\note.txt') 'keep me'
    Write-TestFile (Join-Path $demoPath '.codex-test\evidence.log') 'evidence'
    $list = Invoke-Flow @('cleanup', '-Offline')
    $demoId = Find-CleanupId $list.Output "demo-$today"
    $staleId = Find-CleanupId $list.Output 'stale-task'
    $emptyId = Find-CleanupId $list.Output 'empty-leftover'
    $leftoverId = Find-CleanupId $list.Output 'leftover-with-files'
    $conflictId = Find-CleanupId $list.Output "conflict-$today"
    Assert-Check 'cleanup 列出已合入 worktree、过期 claim、空目录与残留目录' ($demoId -and $staleId -and $emptyId -and $leftoverId -and $conflictId) $list.Output
    Assert-Check 'cleanup 标出本机证据与“只报告”项' ($list.Output -match '本机证据' -and $list.Output -match "\[$leftoverId\] 只报告" -and $list.Output -match "\[$conflictId\] 只报告") $list.Output
    Assert-Check '未同意时不能删除 worktree' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', $demoId)).Code -ne 0 -and (Test-Path $demoPath))
    Assert-Check '“只报告”项即使同意也不能清理' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', $leftoverId) -Approve 'cleanup').Code -ne 0 -and (Test-Path (Join-Path $script:Work '.worktrees\leftover-with-files\note.txt')))
    $claimOnly = Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', $staleId)
    Assert-Check '只归档 claim 不需要同意' ($claimOnly.Code -eq 0 -and (Test-Path (Join-Path $claimsDir 'done\stale-task.json'))) $claimOnly.Output
    $list = Invoke-Flow @('cleanup', '-Offline')
    $demoId = Find-CleanupId $list.Output "demo-$today"
    $emptyId = Find-CleanupId $list.Output 'empty-leftover'
    $applied = Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$demoId,$emptyId") -Approve 'cleanup'
    $branchLeft = (Invoke-TestGit $script:Work @('branch', '--list', "codex/demo-$today")).Trim()
    Assert-Check '同意后删除已合入 worktree、其分支与空目录' ($applied.Code -eq 0 -and -not (Test-Path $demoPath) -and -not $branchLeft -and -not (Test-Path (Join-Path $script:Work '.worktrees\empty-leftover'))) $applied.Output

    Write-Host 'backup'
    $dataRoot = Join-Path $script:Root 'fake-data'
    $backupRoot = Join-Path $script:Root 'backups'
    $dbBytes = [byte[]]::new(1048576)
    [System.Random]::new(3).NextBytes($dbBytes)
    [void](New-Item -ItemType Directory -Force -Path (Join-Path $dataRoot 'support'))
    [System.IO.File]::WriteAllBytes((Join-Path $dataRoot 'support\fushi.db'), $dbBytes)
    Write-TestFile (Join-Path $dataRoot 'support\fushi.db-wal') 'wal'
    Write-TestFile (Join-Path $dataRoot 'support\local_audio_1.db') 'not backed up'
    Write-TestFile (Join-Path $dataRoot 'shared_preferences.json') '{"flutter.data_root":"x"}'
    foreach ($i in 1..3) {
        $backup = Invoke-Flow @('backup', '-Reason', "测试 $i", '-DataRoot', $dataRoot, '-BackupRoot', $backupRoot)
        if ($backup.Code -ne 0) { throw "backup 失败：$($backup.Output)" }
        Start-Sleep -Milliseconds 1100
    }
    $zips = @(Get-ChildItem $backupRoot -Filter 'fushi-data-*.zip' | Sort-Object Name -Descending)
    Assert-Check '连续备份 3 次只保留最近 2 份' ($zips.Count -eq 2) (($zips | ForEach-Object { $_.Name }) -join ', ')
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $archive = [System.IO.Compression.ZipFile]::OpenRead($zips[0].FullName)
    try {
        $entries = @($archive.Entries | ForEach-Object { $_.FullName })
        $reader = [System.IO.StreamReader]::new($archive.GetEntry('manifest.json').Open())
        try { $manifest = $reader.ReadToEnd() | ConvertFrom-Json } finally { $reader.Dispose() }
    }
    finally { $archive.Dispose() }
    $dbHash = (Get-FileHash (Join-Path $dataRoot 'support\fushi.db') -Algorithm SHA256).Hash.ToLowerInvariant()
    $manifestDb = $manifest.files | Where-Object { $_.entry -eq 'support/fushi.db' }
    Assert-Check '备份包含数据库、WAL、设置和清单，不含音频资源库' (($entries -contains 'support/fushi.db') -and ($entries -contains 'support/fushi.db-wal') -and ($entries -contains 'shared_preferences.json') -and ($entries -contains 'manifest.json') -and -not ($entries -match 'local_audio')) ($entries -join ', ')
    Assert-Check '清单记录的哈希与原数据库一致，理由为最后一次' ($manifestDb.sha256 -eq $dbHash -and $manifest.reason -eq '测试 3') ($manifest | ConvertTo-Json -Depth 4)
    $listBackups = Invoke-Flow @('backup', '-List', '-BackupRoot', $backupRoot)
    Assert-Check 'backup -List 显示理由' ($listBackups.Code -eq 0 -and $listBackups.Output -match '测试 3') $listBackups.Output
    $missing = Invoke-Flow @('backup', '-DataRoot', (Join-Path $script:Root 'no-data'), '-BackupRoot', $backupRoot)
    Assert-Check '找不到数据库时报错而不是猜位置' ($missing.Code -ne 0 -and $missing.Output -match '没找到') $missing.Output
}
finally {
    Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
    if ($KeepTemp) { Write-Host "临时目录保留在：$script:Root" }
    elseif (Test-Path -LiteralPath $script:Root) { Remove-Item -LiteralPath $script:Root -Recurse -Force -ErrorAction SilentlyContinue }
}

Write-Host ''
Write-Host "通过 $script:PassedCount 项，失败 $($script:Failures.Count) 项。"
if ($script:Failures.Count -gt 0) {
    $script:Failures | ForEach-Object { Write-Host "---`n$_" -ForegroundColor Red }
    exit 1
}
exit 0
