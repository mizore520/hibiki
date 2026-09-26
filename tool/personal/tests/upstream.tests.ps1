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
|---|---|---|---|---|
| 个人规则 | 规则 | 仅个人 | 保留个人版 | `docs/personal/` `CLAUDE.md` |
| 查词 | 功能 | 已被作者收录-待退役 | 以作者版为准 | `fushi/lib/src/lookup/gal_*` |

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

    Write-Host 'sync-upstream（作者没有新提交）'
    $noop = Invoke-Flow @('sync-upstream')
    $syncDirs = @(Get-ChildItem (Join-Path $script:Work '.worktrees') -Directory -Filter 'sync-upstream-*' -ErrorAction SilentlyContinue)
    Assert-Check '作者没有新提交时提示无需同步，不建 worktree' ($noop.Code -eq 0 -and $noop.Output -match '无需同步' -and $syncDirs.Count -eq 0) $noop.Output

    Write-Host 'patches'
    $patchesOut = Invoke-Flow @('patches')
    Assert-Check 'patches 统计各条目覆盖的文件数' ($patchesOut.Code -eq 0 -and $patchesOut.Output -match '个人规则  \[[^\]]+\]  4 个文件' -and $patchesOut.Output -match '查词  \[[^\]]+\]  1 个文件') $patchesOut.Output
    Assert-Check 'patches 只读「补丁条目」一节，并列出未登记的改动' ($patchesOut.Output -match '未登记的个人改动（3 个文件）' -and $patchesOut.Output -notmatch '不应被读取' -and $patchesOut.Output -match '待退役') $patchesOut.Output
    $patchesAll = Invoke-Flow @('patches', '-All')
    Assert-Check 'patches -All 列出每个未登记文件' ($patchesAll.Output -match 'src/feature\.txt' -and $patchesAll.Output -match 'src/leak\.txt' -and $patchesAll.Output -match 'src/shared\.txt') $patchesAll.Output

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

    Write-Host 'sync-upstream（有冲突、双方都改、schema 升级）'
    $sync = Invoke-Flow @('sync-upstream', '-Agent', 'test')
    $out = $sync.Output
    $syncDir = @(Get-ChildItem (Join-Path $script:Work '.worktrees') -Directory -Filter 'sync-upstream-*')
    Assert-Check 'sync-upstream 在新 worktree 里合并并停在冲突' ($sync.Code -eq 0 -and $syncDir.Count -eq 1 -and (Test-Path (Join-Path $syncDir[0].FullName '.git')) -and $out -match '冲突文件（2 个') $out
    Assert-Check '规则文件冲突按「保留个人版」分类' ($out -match '\[规则文件\] 保留个人版' -and $out -match '(?m)^\s+CLAUDE\.md$') $out
    Assert-Check '补丁条目里的文件冲突按条目策略分类' ($out -match '\[补丁「查词」\] 已被作者收录-待退役；同步冲突时：以作者版为准' -and $out -match 'gal_feature\.dart') $out
    Assert-Check '列出双方都改过但自动合并成功的文件' ($out -match '双方都改过、但自动合并成功的文件（1 个' -and $out -match '(?m)^\s+src/shared\.txt$') $out
    Assert-Check '提示作者改到了待退役的补丁条目' ($out -match '作者这次也改到了以下个人补丁条目' -and $out -match '查词.*核对个人重复实现能否退役') $out
    Assert-Check '发现数据库 schema 升级并提示先备份' ($out -match 'custom v10 → 作者 v11' -and $out -match 'flow backup') $out
    $handoff = Get-ChildItem (Join-Path $script:Work '.worktrees\coordination\handoffs') -Filter 'sync-upstream-*.md' | Select-Object -First 1
    Assert-Check '同步报告写进交接单' ($handoff -and (Get-Content $handoff.FullName -Raw) -match '## 同步报告') ''
    $customUntouched = (Invoke-TestGit $script:Work @('log', '-1', '--format=%s', 'refs/heads/custom')).Trim()
    Assert-Check 'sync-upstream 不动 custom' ($customUntouched -eq 'personal shared tail') $customUntouched
    $again = Invoke-Flow @('sync-upstream')
    Assert-Check '已有进行中的同步任务时拒绝再开' ($again.Code -ne 0 -and $again.Output -match '已有进行中的同步任务') $again.Output

    Write-Host 'pr-branch'
    $upstreamTip = (Invoke-TestGit $script:Work @('rev-parse', 'refs/remotes/upstream/develop')).Trim()
    $pr = Invoke-Flow @('pr-branch', 'feature', '-Commits', $featureSha, '-Description', '提给作者的功能')
    $prPath = Join-Path $script:Work '.worktrees\pr-feature'
    $prCount = if (Test-Path $prPath) { (Invoke-TestGit $prPath @('rev-list', '--count', "$upstreamTip..HEAD")).Trim() } else { '' }
    Assert-Check 'pr-branch 从作者代码建 pr/* 并 cherry-pick 指定提交' ($pr.Code -eq 0 -and $prCount -eq '1' -and (Test-Path (Join-Path $prPath 'src\feature.txt')) -and -not (Test-Path (Join-Path $prPath 'docs\personal'))) $pr.Output
    Assert-Check '干净的 PR 分支没有个人路径警告，并给出推送与建 PR 的步骤' ($pr.Output -notmatch '个人专属路径' -and $pr.Output -match 'git -C .+ push -u origin pr/feature' -and $pr.Output -match 'gh pr create') $pr.Output
    $prClaim = Join-Path $script:Work '.worktrees\coordination\claims\pr-feature.json'
    Assert-Check 'pr-branch 登记 claim，基线是作者提交' ((Test-Path $prClaim) -and ((Get-Content $prClaim -Raw | ConvertFrom-Json).baseSha -eq $upstreamTip)) ''
    $leak = Invoke-Flow @('pr-branch', 'leaky', '-Commits', $leakSha)
    Assert-Check '夹带个人文件的提交会被标出' ($leak.Code -eq 0 -and $leak.Output -match '个人专属路径' -and $leak.Output -match 'docs/personal/leak\.md') $leak.Output
    $conflict = Invoke-Flow @('pr-branch', 'clash', '-Commits', $lookupSha)
    $clashPath = Join-Path $script:Work '.worktrees\pr-clash'
    Assert-Check 'cherry-pick 冲突时停下并说明怎么继续' ($conflict.Code -eq 0 -and $conflict.Output -match '冲突，停在进行中' -and $conflict.Output -match 'gal_feature\.dart' -and (Test-Path (Join-Path $script:Work '.git\worktrees\pr-clash\CHERRY_PICK_HEAD'))) $conflict.Output
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
