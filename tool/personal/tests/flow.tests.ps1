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

# 从 cleanup 清单里按目标路径/名字（可限定编号字母）找项；找不到返回 $null。
function Find-CleanupItem {
    [OutputType([pscustomobject])]
    param([string]$Output, [string]$TargetPart, [string]$Kind = '')
    foreach ($line in ($Output -split "`n")) {
        if ($line -match '^\[(?<id>[A-Z]\d+)\] (?<mark>可清理|只报告)  (?<target>.+?)  —' -and
            $Matches['target'].Contains($TargetPart) -and
            (-not $Kind -or $Matches['id'].StartsWith($Kind))) {
            return [pscustomobject]@{ Id = $Matches['id']; Mark = $Matches['mark']; Target = $Matches['target'] }
        }
    }
    return $null
}

function Get-PreviewTip {
    [OutputType([string])]
    param([string]$Output)
    if ($Output -match '分支尖端：(?<sha>[0-9a-f]{40})') { return $Matches['sha'] }
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
    Write-TestFile (Join-Path $script:Work '.gitignore') ".worktrees/`n.codex-test/`n*.local.md`n"
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
    $tip = Get-PreviewTip $preview.Output
    Assert-Check 'adopt 预览列出提交、尖端与同意提示，且不改 custom' ($preview.Code -eq 0 -and $tip -and $preview.Output -match 'demo feature' -and $preview.Output -match '用户明确同意后执行' -and (Get-CustomSha) -eq $before) $preview.Output
    Assert-Check '预览给出的命令用 $env:FUSHI_APPROVE = $null 清除标记（不用会被误判的 Remove-Item）' ($preview.Output.Contains('; $env:FUSHI_APPROVE = $null') -and $preview.Output -notmatch 'Remove-Item Env:') $preview.Output
    $noApproval = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply', '-Expect', $tip)
    Assert-Check '未同意时 adopt -Apply 被拒绝' ($noApproval.Code -ne 0 -and (Get-CustomSha) -eq $before) $noApproval.Output
    $noExpect = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply') -Approve 'adopt'
    Assert-Check '不带 -Expect 时即使同意也拒绝' ($noExpect.Code -ne 0 -and (Get-CustomSha) -eq $before) $noExpect.Output
    Write-TestFile (Join-Path $demoPath 'late.txt') "late`n"
    Invoke-TestGit $demoPath @('add', 'late.txt') | Out-Null
    Invoke-TestGit $demoPath @('commit', '-q', '-m', 'added after preview') | Out-Null
    $staleExpect = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply', '-Expect', $tip) -Approve 'adopt'
    Assert-Check '预览后分支又有新提交时，旧的 -Expect 被拒绝' ($staleExpect.Code -ne 0 -and (Get-CustomSha) -eq $before) $staleExpect.Output
    $tip = Get-PreviewTip (Invoke-Flow @('adopt', "codex/demo-$today")).Output
    $adopted = Invoke-Flow @('adopt', "codex/demo-$today", '-Apply', '-Expect', $tip, '-Message', 'Merge demo into custom') -Approve 'adopt'
    $parents = (Invoke-TestGit $script:Work @('log', '-1', '--format=%P', 'refs/heads/custom')).Trim() -split ' '
    Assert-Check '同意后按预览锁定的提交合入' ($adopted.Code -eq 0 -and $parents.Count -eq 2 -and $parents[1] -eq $tip) $adopted.Output
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
    $conflictApply = Invoke-Flow @('adopt', "codex/conflict-$today", '-Apply', '-Expect', (Get-PreviewTip $conflictPreview.Output)) -Approve 'adopt'
    $mergeHead = Test-Path (Join-Path $script:Work '.git\MERGE_HEAD')
    Assert-Check '有冲突时即使同意也拒绝，custom 不变且没有残留合并状态' ($conflictApply.Code -ne 0 -and (Get-CustomSha) -eq $before -and -not $mergeHead) $conflictApply.Output

    Invoke-Flow @('start', 'dirty', '-Description', '脏工作区演示') | Out-Null
    $dirtyPath = Join-Path $script:Work ".worktrees\dirty-$today"
    Write-TestFile (Join-Path $dirtyPath 'done.txt') "done`n"
    Invoke-TestGit $dirtyPath @('add', 'done.txt') | Out-Null
    Invoke-TestGit $dirtyPath @('commit', '-q', '-m', 'dirty task') | Out-Null
    Write-TestFile (Join-Path $dirtyPath 'uncommitted.txt') "wip`n"
    $dirtyTip = Get-PreviewTip (Invoke-Flow @('adopt', "codex/dirty-$today")).Output
    $dirtyApply = Invoke-Flow @('adopt', "codex/dirty-$today", '-Apply', '-Expect', $dirtyTip) -Approve 'adopt'
    Assert-Check '任务 worktree 有未提交改动时拒绝采用' ($dirtyApply.Code -ne 0 -and (Get-CustomSha) -eq $before -and $dirtyApply.Output -match '未提交') $dirtyApply.Output

    Write-Host 'cleanup'
    # 造出各类收尾对象：过期 claim、空目录、非空残留目录、带被忽略本机文件的已合入 worktree、
    # 刚开始没提交的任务、合入后仍保留 claim 的任务、非 codex/pr 分支的 worktree，
    # 以及被作者用不同提交收录的 pr 分支和还带未落地提交的 pr 分支。
    Write-TestFile (Join-Path $claimsDir 'stale-task.json') '{"task":"old","branch":"codex/gone-20200101","worktree":"x","status":"active"}'
    $emptyPath = Join-Path $script:Work '.worktrees\empty-leftover'
    [void](New-Item -ItemType Directory -Force -Path $emptyPath)
    Write-TestFile (Join-Path $script:Work '.worktrees\leftover-with-files\note.txt') 'keep me'
    Write-TestFile (Join-Path $demoPath '.codex-test\evidence.log') 'evidence'
    Write-TestFile (Join-Path $demoPath 'notes.local.md') 'private notes'
    Invoke-Flow @('start', 'fresh', '-Description', '刚开始') | Out-Null
    $freshPath = Join-Path $script:Work ".worktrees\fresh-$today"
    Invoke-Flow @('start', 'kept', '-Description', '合入后继续') | Out-Null
    $keptPath = Join-Path $script:Work ".worktrees\kept-$today"
    Write-TestFile (Join-Path $keptPath 'kept.txt') "kept`n"
    Invoke-TestGit $keptPath @('add', 'kept.txt') | Out-Null
    Invoke-TestGit $keptPath @('commit', '-q', '-m', 'kept work') | Out-Null
    $keptTip = Get-PreviewTip (Invoke-Flow @('adopt', "codex/kept-$today")).Output
    $kept = Invoke-Flow @('adopt', "codex/kept-$today", '-Apply', '-Expect', $keptTip, '-KeepClaim') -Approve 'adopt'
    if ($kept.Code -ne 0) { throw "准备 kept 任务失败：$($kept.Output)" }
    $otherPath = Join-Path $script:Work '.worktrees\other-branch'
    Invoke-TestGit $script:Work @('worktree', 'add', '-q', '-b', 'feature/other', $otherPath, 'refs/heads/custom') | Out-Null
    $prTemp = Join-Path $script:Root 'pr-temp'
    Invoke-TestGit $script:Work @('worktree', 'add', '-q', '-b', 'pr/landed', $prTemp, 'refs/remotes/upstream/develop') | Out-Null
    Write-TestFile (Join-Path $prTemp 'pr.txt') "contribution`n"
    Invoke-TestGit $prTemp @('add', 'pr.txt') | Out-Null
    Invoke-TestGit $prTemp @('commit', '-q', '-m', 'my contribution') | Out-Null
    Invoke-TestGit $prTemp @('checkout', '-q', '-b', 'pr/extra') | Out-Null
    Write-TestFile (Join-Path $prTemp 'extra.txt') "unlanded`n"
    Invoke-TestGit $prTemp @('add', 'extra.txt') | Out-Null
    Invoke-TestGit $prTemp @('commit', '-q', '-m', 'extra after merge') | Out-Null
    Invoke-TestGit $prTemp @('checkout', '-q', '--detach') | Out-Null
    Invoke-TestGit $script:Work @('worktree', 'remove', '--force', $prTemp) | Out-Null
    $author = Join-Path $script:Root 'author'
    Invoke-TestGit $script:Root @('clone', '-q', '-b', 'develop', $upstream, $author) | Out-Null
    Invoke-TestGit $author @('config', 'user.name', 'author') | Out-Null
    Invoke-TestGit $author @('config', 'user.email', 'author@example.invalid') | Out-Null
    Write-TestFile (Join-Path $author 'pr.txt') "contribution`n"
    Invoke-TestGit $author @('add', 'pr.txt') | Out-Null
    Invoke-TestGit $author @('commit', '-q', '-m', 'squash-merged contribution (#1)') | Out-Null
    Invoke-TestGit $author @('push', '-q', 'origin', 'develop') | Out-Null
    Invoke-TestGit $script:Work @('fetch', '-q', 'upstream') | Out-Null

    # 离线跑不到 gh：直接调用分支归类函数，喂一份模拟的 PR 列表，覆盖「PR 已合并但还有未落地改动」。
    $script:PersonalRoot = Join-Path $PSScriptRoot '..'
    . (Join-Path $PSScriptRoot '..\lib\Common.ps1')
    . (Join-Path $PSScriptRoot '..\lib\Status.ps1')
    $fakePrs = @(
        [pscustomobject]@{ number = 7; state = 'MERGED'; headRefName = 'pr/extra' }
        [pscustomobject]@{ number = 8; state = 'MERGED'; headRefName = "codex/conflict-$today" }
    )
    $ctx = Get-FlowContext $script:Work
    $extraState = Get-FlowBranchState $ctx 'pr/extra' $fakePrs @{}
    $conflictState = Get-FlowBranchState $ctx "codex/conflict-$today" $fakePrs @{}
    Assert-Check 'PR 已合并但分支还带未落地提交：不算已落地，并说明原因' (-not $extraState.Landed -and $extraState.Label -eq 'PR #7 已合并，但分支上还有未进作者仓库的改动') ($extraState | Out-String)
    Assert-Check '同名 PR 已合并不能让未合入的任务分支变成已落地' (-not $conflictState.Landed -and $conflictState.Label -match '^PR #8 已合并，但分支上还有未进') ($conflictState | Out-String)

    $list = Invoke-Flow @('cleanup', '-Offline')
    $out = $list.Output
    $demo = Find-CleanupItem $out "demo-$today"
    $fresh = Find-CleanupItem $out "fresh-$today"
    $keptW = Find-CleanupItem $out $keptPath
    $keptC = Find-CleanupItem $out "kept-$today" 'C'
    $other = Find-CleanupItem $out 'other-branch'
    $prLanded = Find-CleanupItem $out 'pr/landed'
    $prExtra = Find-CleanupItem $out 'pr/extra'
    $stale = Find-CleanupItem $out 'stale-task'
    $empty = Find-CleanupItem $out 'empty-leftover'
    $leftover = Find-CleanupItem $out 'leftover-with-files'
    $conflictItem = Find-CleanupItem $out "conflict-$today"
    Assert-Check 'cleanup 列出全部收尾对象' ($demo -and $fresh -and $keptW -and $keptC -and $other -and $prLanded -and $prExtra -and $stale -and $empty -and $leftover -and $conflictItem) $out
    Assert-Check '已合入且 claim 已归档的 worktree 可清理，并列出会被删掉的被忽略文件' ($demo.Mark -eq '可清理' -and $out -match '\.codex-test' -and $out -match 'notes\.local\.md') $out
    Assert-Check '刚开始、没有自己提交的任务只报告' ($fresh.Mark -eq '只报告' -and $out -match '没有自己的提交') $out
    Assert-Check '已合入但 claim 仍在进行的 worktree 只报告，claim 可单独归档' ($keptW.Mark -eq '只报告' -and $keptC.Mark -eq '可清理') $out
    Assert-Check '非 codex/pr 分支的 worktree 只报告' ($other.Mark -eq '只报告') $out
    Assert-Check '被作者用不同提交收录的 pr 分支可清理' ($prLanded.Mark -eq '可清理' -and $out -match 'pr/landed  —  内容已进作者仓库') $out
    Assert-Check 'pr 分支还带未落地提交时只报告' ($prExtra.Mark -eq '只报告') $out
    Assert-Check '未合入与残留目录只报告' ($conflictItem.Mark -eq '只报告' -and $leftover.Mark -eq '只报告') $out

    Assert-Check '只写编号不写目标被拒绝' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', $demo.Id) -Approve 'cleanup').Code -ne 0 -and (Test-Path $demoPath))
    Assert-Check '编号与目标对不上被拒绝' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($demo.Id)=$freshPath") -Approve 'cleanup').Code -ne 0 -and (Test-Path $demoPath) -and (Test-Path $freshPath))
    $spaced = Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($stale.Id)=stale-task", "$($empty.Id)=$emptyPath")
    Assert-Check '多个项用空格分开（落到位置参数）时整体拒绝' ($spaced.Code -ne 0 -and (Test-Path (Join-Path $claimsDir 'stale-task.json'))) $spaced.Output
    Assert-Check '未同意时不能删除 worktree' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($demo.Id)=$demoPath")).Code -ne 0 -and (Test-Path $demoPath))
    Assert-Check '「只报告」项即使同意也不能清理' ((Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($leftover.Id)=$($leftover.Target)") -Approve 'cleanup').Code -ne 0 -and (Test-Path (Join-Path $script:Work '.worktrees\leftover-with-files\note.txt')))
    $claimOnly = Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($stale.Id)=stale-task")
    Assert-Check '只归档 claim 不需要同意' ($claimOnly.Code -eq 0 -and (Test-Path (Join-Path $claimsDir 'done\stale-task.json'))) $claimOnly.Output

    $out = (Invoke-Flow @('cleanup', '-Offline')).Output
    $demo = Find-CleanupItem $out "demo-$today"
    $empty = Find-CleanupItem $out 'empty-leftover'
    $prLanded = Find-CleanupItem $out 'pr/landed'
    $applied = Invoke-Flow @('cleanup', '-Offline', '-Apply', '-Items', "$($demo.Id)=$demoPath,$($empty.Id)=$emptyPath,$($prLanded.Id)=pr/landed") -Approve 'cleanup'
    $branchesLeft = (Invoke-TestGit $script:Work @('branch', '--list', "codex/demo-$today", 'pr/landed')).Trim()
    Assert-Check '同意后删除确认过的 worktree、分支与空目录' ($applied.Code -eq 0 -and -not (Test-Path $demoPath) -and -not $branchesLeft -and -not (Test-Path $emptyPath) -and (Test-Path $freshPath)) $applied.Output

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
    $rapidRoot = Join-Path $script:Root 'backups-rapid'
    $rapidFirst = Invoke-Flow @('backup', '-Reason', '连跑 1', '-DataRoot', $dataRoot, '-BackupRoot', $rapidRoot)
    $rapidSecond = Invoke-Flow @('backup', '-Reason', '连跑 2', '-DataRoot', $dataRoot, '-BackupRoot', $rapidRoot)
    $rapidZips = @(Get-ChildItem $rapidRoot -Filter 'fushi-data-*.zip')
    Assert-Check '紧接着连跑两次备份都成功，互不覆盖或误删' ($rapidFirst.Code -eq 0 -and $rapidSecond.Code -eq 0 -and $rapidZips.Count -eq 2) "$($rapidFirst.Output)`n$($rapidSecond.Output)"
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
