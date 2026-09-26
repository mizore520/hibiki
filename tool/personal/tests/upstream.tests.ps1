<#
.SYNOPSIS
  在临时仓库里演练 flow.ps1 的 patches / sync-upstream / pr-branch，不接触真实仓库。

.EXAMPLE
  pwsh -File tool/personal/tests/upstream.tests.ps1
#>
[CmdletBinding()]
param([switch]$KeepTemp)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$script:Flow = Join-Path $PSScriptRoot '..\flow.ps1'
$script:Root = Join-Path ([System.IO.Path]::GetTempPath()) ('fushi-upstream-test-' + [guid]::NewGuid().ToString('N').Substring(0, 8))
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
    param([string[]]$Arguments)
    Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
    $output = & pwsh -NoProfile -File $script:Flow @Arguments -Repo $script:Work 2>&1 | ForEach-Object { "$_" }
    return [pscustomobject]@{ Code = $LASTEXITCODE; Output = ($output -join "`n") }
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

function Write-TestFile {
    [OutputType([void])]
    param([string]$Path, [string]$Content)
    [void](New-Item -ItemType Directory -Force -Path (Split-Path $Path -Parent))
    [System.IO.File]::WriteAllText($Path, $Content)
}

function Save-Commit {
    [OutputType([string])]
    param([string]$Dir, [string]$Message, [string[]]$Paths, [string]$Approve = '')
    Invoke-TestGit $Dir (@('add', '--') + $Paths) | Out-Null
    Invoke-TestGit $Dir @('commit', '-q', '-m', $Message) -Approve $Approve | Out-Null
    return (Invoke-TestGit $Dir @('rev-parse', 'HEAD')).Trim()
}

function Set-Identity {
    [OutputType([void])]
    param([string]$Dir, [string]$Name)
    Invoke-TestGit $Dir @('config', 'user.name', $Name) | Out-Null
    Invoke-TestGit $Dir @('config', 'user.email', "$Name@example.invalid") | Out-Null
    Invoke-TestGit $Dir @('config', 'commit.gpgsign', 'false') | Out-Null
    Invoke-TestGit $Dir @('config', 'core.autocrlf', 'false') | Out-Null
}

$sharedLines = (1..12 | ForEach-Object { "line $_" }) -join "`n"
$patches = @'
# 个人补丁清单

## 补丁条目

| 名称 | 类型 | 状态 | 同步冲突时 | 路径 |
|:---|:---|:---|:---|:---|
| 个人规则 | 规则 | 仅个人 | 保留个人版 | `docs/personal/` `CLAUDE.md` |
| 查词 | 功能 | 已被作者收录-待退役 | 以作者版为准 | `fushi/lib/src/lookup/gal_*` |
| 规则误登记 | 规则 | 仅个人 | 保留个人版 | `src/leak.txt` |
| 坏行 | 功能 | 仅个人 | 写了 | 竖线 | `broken/` |

## 其他

| 名称 | 类型 | 状态 | 同步冲突时 | 路径 |
|---|---|---|---|---|
| 不应被读取 | x | x | x | `src/` |
'@

try {
    [void](New-Item -ItemType Directory -Path $script:Root)
    $upstream = Join-Path $script:Root 'upstream.git'
    Invoke-TestGit $script:Root @('init', '-q', '--bare', '-b', 'develop', $upstream) | Out-Null
    Invoke-TestGit $script:Root @('init', '-q', '-b', 'develop', $script:Work) | Out-Null
    Set-Identity $script:Work 'me'
    Write-TestFile (Join-Path $script:Work '.gitignore') ".worktrees/`n.codex-test/`n"
    Write-TestFile (Join-Path $script:Work 'CLAUDE.md') "# rules`nshared rule`n"
    Write-TestFile (Join-Path $script:Work 'src/shared.txt') "$sharedLines`n"
    Write-TestFile (Join-Path $script:Work 'fushi/lib/src/lookup/gal_feature.dart') "// lookup v1`n"
    Write-TestFile (Join-Path $script:Work 'packages/fushi_core/lib/src/database/database.dart') "class Db {`n  @override`n  int get schemaVersion => 10;`n}`n"
    Save-Commit $script:Work 'base' @('.gitignore', 'CLAUDE.md', 'src/shared.txt', 'fushi/lib/src/lookup/gal_feature.dart', 'packages/fushi_core/lib/src/database/database.dart') | Out-Null
    Invoke-TestGit $script:Work @('remote', 'add', 'upstream', $upstream) | Out-Null
    Invoke-TestGit $script:Work @('push', '-q', 'upstream', 'develop') | Out-Null
    Invoke-TestGit $script:Work @('checkout', '-q', '-b', 'custom') | Out-Null
    Invoke-TestGit $script:Work @('fetch', '-q', 'upstream') | Out-Null
    $install = Invoke-Flow @('install-hooks')
    if ($install.Code -ne 0) { throw "install-hooks 失败：$($install.Output)" }

    # 个人提交：规则与清单、可提给作者的功能、改查词、夹带个人文件的提交、改共享文件的另一段。
    Write-TestFile (Join-Path $script:Work 'CLAUDE.md') "# rules`npersonal rule`n"
    Write-TestFile (Join-Path $script:Work 'docs/personal/PATCHES.md') $patches
    Write-TestFile (Join-Path $script:Work 'docs/personal/notes.md') "notes`n"
    Save-Commit $script:Work 'personal rules' @('CLAUDE.md', 'docs/personal/PATCHES.md', 'docs/personal/notes.md') -Approve 'adopt' | Out-Null
    Write-TestFile (Join-Path $script:Work 'src/feature.txt') "feature for author`n"
    $featureSha = Save-Commit $script:Work 'feature worth upstreaming' @('src/feature.txt') -Approve 'adopt'
    Write-TestFile (Join-Path $script:Work 'fushi/lib/src/lookup/gal_feature.dart') "// lookup personal tweak`n"
    $lookupSha = Save-Commit $script:Work 'personal lookup tweak' @('fushi/lib/src/lookup/gal_feature.dart') -Approve 'adopt'
    Write-TestFile (Join-Path $script:Work 'docs/personal/leak.md') "private`n"
    Write-TestFile (Join-Path $script:Work 'src/leak.txt') "fix with notes`n"
    $leakSha = Save-Commit $script:Work 'fix plus private notes' @('docs/personal/leak.md', 'src/leak.txt') -Approve 'adopt'
    Write-TestFile (Join-Path $script:Work 'src/shared.txt') ($sharedLines.Replace('line 12', 'line 12 personal') + "`n")
    Save-Commit $script:Work 'personal shared tail' @('src/shared.txt') -Approve 'adopt' | Out-Null

    Write-Host '路径模式'
    $script:PersonalRoot = Join-Path $PSScriptRoot '..'
    . (Join-Path $PSScriptRoot '..\lib\Common.ps1')
    Assert-Check '「a/**/b」同时匹配 a/b 和多层目录' ((Test-FlowPathMatch 'a/b' @('a/**/b')) -and (Test-FlowPathMatch 'a/x/y/b' @('a/**/b')) -and -not (Test-FlowPathMatch 'a/xb' @('a/**/b')))
    Assert-Check '「*」不跨目录，「/」结尾按前缀匹配' ((Test-FlowPathMatch 'src/gal_x.dart' @('src/gal_*')) -and -not (Test-FlowPathMatch 'src/sub/gal_x.dart' @('src/gal_*')) -and (Test-FlowPathMatch 'docs/personal/a/b.md' @('docs/personal/')))

    Write-Host 'sync-upstream（作者没有新提交）'
    $noop = Invoke-Flow @('sync-upstream')
    $syncDirs = @(Get-ChildItem (Join-Path $script:Work '.worktrees') -Directory -Filter 'sync-upstream-*' -ErrorAction SilentlyContinue)
    Assert-Check '作者没有新提交时提示无需同步，不建 worktree' ($noop.Code -eq 0 -and $noop.Output -match '无需同步' -and $syncDirs.Count -eq 0) $noop.Output

    Write-Host 'patches'
    $patchesOut = Invoke-Flow @('patches')
    Assert-Check 'patches 统计各条目覆盖的文件数' ($patchesOut.Code -eq 0 -and $patchesOut.Output -match '个人规则  \[[^\]]+\]  4 个文件' -and $patchesOut.Output -match '查词  \[[^\]]+\]  1 个文件') $patchesOut.Output
    Assert-Check 'patches 只读「补丁条目」一节，并列出未登记的改动' ($patchesOut.Output -match '未登记的个人改动（2 个文件）' -and $patchesOut.Output -notmatch '不应被读取' -and $patchesOut.Output -match '待退役') $patchesOut.Output
    Assert-Check '「规则」类条目覆盖非 .md 文件时报警' ($patchesOut.Output -match '类型是「规则」，但覆盖了 1 个非 \.md 文件') $patchesOut.Output
    Assert-Check '列数不对的行报警、对齐分隔行不被当成条目' ($patchesOut.Output -match '有 6 列（应为 5 列' -and $patchesOut.Output -notmatch ':---') $patchesOut.Output
    $patchesAll = Invoke-Flow @('patches', '-All')
    Assert-Check 'patches -All 列出每个未登记文件' ($patchesAll.Output -match '(?m)^  src/feature\.txt$' -and $patchesAll.Output -match '(?m)^  src/shared\.txt$' -and $patchesAll.Output -notmatch '(?m)^  src/leak\.txt$') $patchesAll.Output

    # 作者：改规则文件同一行、改查词、升数据库版本、改共享文件另一段、加新文件。
    $author = Join-Path $script:Root 'author'
    Invoke-TestGit $script:Root @('clone', '-q', '-b', 'develop', $upstream, $author) | Out-Null
    Set-Identity $author 'author'
    Write-TestFile (Join-Path $author 'CLAUDE.md') "# rules`nauthor rule`n"
    Write-TestFile (Join-Path $author 'fushi/lib/src/lookup/gal_feature.dart') "// lookup v2 by author`n"
    Write-TestFile (Join-Path $author 'packages/fushi_core/lib/src/database/database.dart') "class Db {`n  @override`n  int get schemaVersion => 11;`n}`n"
    Write-TestFile (Join-Path $author 'src/shared.txt') ($sharedLines.Replace('line 1' + "`n", "line 1 author`n") + "`n")
    Write-TestFile (Join-Path $author 'src/author.txt') "author only`n"
    Save-Commit $author 'author update' @('CLAUDE.md', 'fushi/lib/src/lookup/gal_feature.dart', 'packages/fushi_core/lib/src/database/database.dart', 'src/shared.txt', 'src/author.txt') | Out-Null
    Invoke-TestGit $author @('push', '-q', 'origin', 'develop') | Out-Null
    # 个人版里也加一个与作者完全相同的文件：提给作者时应被识别为「作者已有」并跳过。
    Write-TestFile (Join-Path $script:Work 'src/author.txt') "author only`n"
    $dupSha = Save-Commit $script:Work 'same file as author' @('src/author.txt') -Approve 'adopt'

    Write-Host 'sync-upstream（有冲突、双方都改、schema 升级）'
    $sync = Invoke-Flow @('sync-upstream', '-Agent', 'test')
    $out = $sync.Output
    $syncDir = @(Get-ChildItem (Join-Path $script:Work '.worktrees') -Directory -Filter 'sync-upstream-*')
    Assert-Check 'sync-upstream 在新 worktree 里合并并停在冲突' ($sync.Code -eq 0 -and $syncDir.Count -eq 1 -and (Test-Path (Join-Path $syncDir[0].FullName '.git')) -and $out -match '冲突文件（2 个') $out
    Assert-Check '规则文件冲突按「保留个人版」分类' ($out -match '\[规则文件（1 个）\] 保留个人版' -and $out -match '(?m)^\s+CLAUDE\.md$') $out
    Assert-Check '补丁条目里的文件仍按代码冲突处理，条目只作核对提示' ($out -match '\[代码（1 个）\]' -and $out -match 'gal_feature\.dart' -and $out -match '登记在补丁「查词」.*确认都属于该条目才按条目策略处理') $out
    Assert-Check '列出双方都改过但自动合并成功的文件' ($out -match '双方都改过、自动合并成功的文件（2 个' -and $out -match '(?m)^\s+src/shared\.txt$' -and $out -match '(?m)^\s+src/author\.txt$') $out
    Assert-Check '只列出双方都改过的文件所涉及的补丁条目' ($out -match '双方都改过的文件涉及以下个人补丁条目' -and $out -match '查词.*核对个人重复实现能否退役') $out
    Assert-Check '发现数据库 schema 升级和数据库定义改动，并提示先备份' ($out -match 'custom v10 → 作者 v11' -and $out -match 'flow backup' -and $out -match '作者改了数据库定义') $out
    $handoff = Get-ChildItem (Join-Path $script:Work '.worktrees\coordination\handoffs') -Filter 'sync-upstream-*.md' | Select-Object -First 1
    Assert-Check '完整同步报告写进交接单' ($handoff -and (Get-Content $handoff.FullName -Raw) -match '## 同步报告' -and (Get-Content $handoff.FullName -Raw) -match 'src/shared\.txt') ''
    $customUntouched = (Invoke-TestGit $script:Work @('log', '-1', '--format=%s', 'refs/heads/custom')).Trim()
    Assert-Check 'sync-upstream 不动 custom' ($customUntouched -eq 'same file as author') $customUntouched
    $again = Invoke-Flow @('sync-upstream')
    Assert-Check '已有进行中的同步任务时拒绝再开' ($again.Code -ne 0 -and $again.Output -match '已有进行中的同步任务') $again.Output

    Write-Host '放弃同步后重开'
    $firstSyncBranch = (Invoke-TestGit $syncDir[0].FullName @('rev-parse', '--abbrev-ref', 'HEAD')).Trim()
    $firstSyncClaim = $syncDir[0].Name
    Invoke-TestGit $script:Work @('worktree', 'remove', '--force', $syncDir[0].FullName) | Out-Null
    $reopen = Invoke-Flow @('sync-upstream')
    $syncDirs = @(Get-ChildItem (Join-Path $script:Work '.worktrees') -Directory -Filter 'sync-upstream-*')
    Assert-Check 'worktree 已删除的旧同步不再挡路：提醒归档并换名重开' ($reopen.Code -eq 0 -and $reopen.Output -match "发现 worktree 已不存在的同步 claim $firstSyncClaim" -and $syncDirs.Count -eq 1 -and $syncDirs[0].Name -eq "$firstSyncClaim-2") $reopen.Output
    $cleanupList = (Invoke-Flow @('cleanup', '-Offline')).Output
    Assert-Check 'cleanup 为放弃的同步提供「归档 claim」项' ($cleanupList -match "(?m)^\[C\d+\] 可清理  $([regex]::Escape($firstSyncClaim))  —  分支上没有自己的提交") $cleanupList
    Assert-Check '正在解冲突的同步不能被归档，示例命令也不选放弃类项' ($cleanupList -match "(?m)^\[C\d+\] 只报告  $([regex]::Escape($firstSyncClaim))-2  —" -and $cleanupList -notmatch "-Items '[^']*sync-upstream") $cleanupList

    Write-Host 'pr-branch'
    $upstreamTip = (Invoke-TestGit $script:Work @('rev-parse', 'refs/remotes/upstream/develop')).Trim()
    $pr = Invoke-Flow @('pr-branch', 'feature', '-Commits', $featureSha, '-Description', '提给作者的功能')
    $prPath = Join-Path $script:Work '.worktrees\pr-feature'
    $prCount = if (Test-Path $prPath) { (Invoke-TestGit $prPath @('rev-list', '--count', "$upstreamTip..HEAD")).Trim() } else { '' }
    Assert-Check 'pr-branch 从作者代码建 pr/* 并 cherry-pick 指定提交' ($pr.Code -eq 0 -and $prCount -eq '1' -and (Test-Path (Join-Path $prPath 'src\feature.txt')) -and -not (Test-Path (Join-Path $prPath 'docs\personal'))) $pr.Output
    Assert-Check '干净的 PR 分支没有个人路径警告，列出提交说明并给出推送与建 PR 的步骤' ($pr.Output -notmatch '个人专属路径' -and $pr.Output -match '提交说明' -and $pr.Output -match 'feature worth upstreaming' -and $pr.Output -match 'git -C .+ push -u origin pr/feature' -and $pr.Output -match 'gh pr create') $pr.Output
    $prMessage = Invoke-TestGit $prPath @('log', '-1', '--format=%B')
    Assert-Check 'PR 提交说明不附带 custom 的提交号' ($prMessage -notmatch 'cherry picked from') $prMessage
    $prClaim = Join-Path $script:Work '.worktrees\coordination\claims\pr-feature.json'
    Assert-Check 'pr-branch 登记 claim，基线是作者提交' ((Test-Path $prClaim) -and ((Get-Content $prClaim -Raw | ConvertFrom-Json).baseSha -eq $upstreamTip)) ''
    $leak = Invoke-Flow @('pr-branch', 'leaky', '-Commits', $leakSha)
    Assert-Check '夹带个人文件的提交会被标出' ($leak.Code -eq 0 -and $leak.Output -match '个人专属路径' -and $leak.Output -match 'docs/personal/leak\.md') $leak.Output
    $dup = Invoke-Flow @('pr-branch', 'dup', '-Commits', $dupSha)
    Assert-Check '作者已有的改动自动跳过，不当成冲突' ($dup.Code -eq 0 -and $dup.Output -match '已跳过' -and $dup.Output -notmatch '冲突，停在进行中') $dup.Output
    # 让 prepare-commit-msg 钩子失败：cherry-pick 在改动已进暂存区之后失败，不是空提交，不能当成「作者已有」跳过。
    $failHook = Join-Path $script:Work '.git\hooks\prepare-commit-msg'
    [System.IO.File]::WriteAllText($failHook, "#!/bin/sh`n[ -n `"`$FUSHI_TEST_FAIL_PICK`" ] && { echo injected-failure >&2; exit 1; }`nexit 0`n")
    $env:FUSHI_TEST_FAIL_PICK = '1'
    try { $broken = Invoke-Flow @('pr-branch', 'broken', '-Commits', $featureSha) }
    finally { Remove-Item Env:FUSHI_TEST_FAIL_PICK -ErrorAction SilentlyContinue; Remove-Item -LiteralPath $failHook -Force }
    Assert-Check '非冲突的 cherry-pick 失败会停下报错，不当成作者已有跳过' ($broken.Code -eq 0 -and $broken.Output -match '失败（不是冲突' -and $broken.Output -notmatch '已跳过') $broken.Output
    $reversed = Invoke-Flow @('pr-branch', 'reversed', '-Commits', "$leakSha,$featureSha")
    Assert-Check '-Commits 顺序颠倒时拒绝，且不建分支' ($reversed.Code -ne 0 -and $reversed.Output -match '顺序颠倒' -and -not (Test-Path (Join-Path $script:Work '.worktrees\pr-reversed'))) $reversed.Output
    $conflict = Invoke-Flow @('pr-branch', 'clash', '-Commits', $lookupSha)
    $clashPath = Join-Path $script:Work '.worktrees\pr-clash'
    Assert-Check 'cherry-pick 冲突时停下并说明怎么继续' ($conflict.Code -eq 0 -and $conflict.Output -match '冲突，停在进行中' -and $conflict.Output -match 'gal_feature\.dart' -and $conflict.Output -match '-Resume' -and (Test-Path (Join-Path $script:Work '.git\worktrees\pr-clash\CHERRY_PICK_HEAD'))) $conflict.Output
    $clashHandoff = Join-Path $script:Work '.worktrees\coordination\handoffs\pr-clash.md'
    Assert-Check '冲突情况写进 PR 交接单' ((Get-Content $clashHandoff -Raw) -match 'cherry-pick 停下') ''
    $early = Invoke-Flow @('pr-branch', 'clash', '-Resume')
    Assert-Check '冲突没解完时 -Resume 拒绝' ($early.Code -ne 0 -and $early.Output -match '还没完成') $early.Output
    Write-TestFile (Join-Path $clashPath 'fushi/lib/src/lookup/gal_feature.dart') "// lookup v2 by author, plus personal tweak`n"
    Invoke-TestGit $clashPath @('add', 'fushi/lib/src/lookup/gal_feature.dart') | Out-Null
    Invoke-TestGit $clashPath @('-c', 'core.editor=true', 'cherry-pick', '--continue') | Out-Null
    $resumed = Invoke-Flow @('pr-branch', 'clash', '-Resume')
    Assert-Check '解完冲突后 -Resume 重新检查并给出下一步' ($resumed.Code -eq 0 -and $resumed.Output -match '下一步（S4）' -and $resumed.Output -match 'personal lookup tweak') $resumed.Output
    Assert-Check '同名 PR 主题被拒绝' ((Invoke-Flow @('pr-branch', 'feature', '-Commits', $featureSha)).Code -ne 0)
    Assert-Check '不存在的提交被拒绝，且不建分支' ((Invoke-Flow @('pr-branch', 'ghost', '-Commits', 'deadbeefdeadbeef')).Code -ne 0 -and -not (Test-Path (Join-Path $script:Work '.worktrees\pr-ghost')))
    Assert-Check '没给 -Commits 被拒绝' ((Invoke-Flow @('pr-branch', 'empty')).Code -ne 0)
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
