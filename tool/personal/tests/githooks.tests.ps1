<#
.SYNOPSIS
  在临时仓库里逐项验证 Fushi 护栏钩子（G1–G5）的放行与拦截，不接触真实仓库。

.DESCRIPTION
  构造 upstream（作者）、origin（个人 fork）两个裸仓库和一个工作仓库，
  用 tool/personal/flow.ps1 install-hooks 安装钩子后执行各场景并断言结果。
  全部通过时退出码 0，否则 1。

.EXAMPLE
  pwsh -File tool/personal/tests/githooks.tests.ps1
#>
[CmdletBinding()]
param(
    # 保留临时目录以便排查。
    [switch]$KeepTemp
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$script:Flow = Join-Path $PSScriptRoot '..\flow.ps1'
$script:Root = Join-Path ([System.IO.Path]::GetTempPath()) ('fushi-hooks-test-' + [guid]::NewGuid().ToString('N').Substring(0, 8))
$script:Failures = [System.Collections.Generic.List[string]]::new()
$script:PassedCount = 0

function Invoke-TestGit {
    [OutputType([pscustomobject])]
    param(
        [string]$Dir,
        [string[]]$Arguments,
        [string]$Approve = ''
    )
    $previousPreference = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    if ($Approve) { $env:FUSHI_APPROVE = $Approve } else { Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue }
    try {
        $output = & git -C $Dir @Arguments 2>&1 | ForEach-Object { "$_" }
        $code = $LASTEXITCODE
    }
    finally {
        Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
        $ErrorActionPreference = $previousPreference
    }
    return [pscustomobject]@{ Code = $code; Output = ($output -join "`n") }
}

# 准备步骤必须成功，否则后续断言没有意义。
function Invoke-SetupGit {
    [OutputType([string])]
    param(
        [string]$Dir,
        [string[]]$Arguments,
        [string]$Approve = ''
    )
    $result = Invoke-TestGit -Dir $Dir -Arguments $Arguments -Approve $Approve
    if ($result.Code -ne 0) {
        throw "准备步骤失败：git $($Arguments -join ' ')`n$($result.Output)"
    }
    return $result.Output
}

function Assert-Blocked {
    [OutputType([void])]
    param([string]$Name, [pscustomobject]$Result)
    if ($Result.Code -ne 0 -and $Result.Output -match 'FUSHI GUARD BLOCKED') {
        $script:PassedCount++
        Write-Host "  [通过] 拦截：$Name"
        return
    }
    $script:Failures.Add("应拦截但未拦截：$Name（退出码 $($Result.Code)）`n$($Result.Output)")
    Write-Host "  [失败] 应拦截：$Name" -ForegroundColor Red
}

function Assert-Allowed {
    [OutputType([void])]
    param([string]$Name, [pscustomobject]$Result)
    if ($Result.Code -eq 0) {
        $script:PassedCount++
        Write-Host "  [通过] 放行：$Name"
        return
    }
    $script:Failures.Add("应放行但被拒绝：$Name（退出码 $($Result.Code)）`n$($Result.Output)")
    Write-Host "  [失败] 应放行：$Name" -ForegroundColor Red
}

# 退出码为 0 还不够：gc 之类会在内部步骤被拦后仍返回 0，需要确认输出里没有拦截。
function Assert-AllowedClean {
    [OutputType([void])]
    param([string]$Name, [pscustomobject]$Result)
    if ($Result.Code -eq 0 -and $Result.Output -notmatch 'FUSHI GUARD') {
        $script:PassedCount++
        Write-Host "  [通过] 放行：$Name"
        return
    }
    $script:Failures.Add("应无拦截地放行：$Name（退出码 $($Result.Code)）`n$($Result.Output)")
    Write-Host "  [失败] 应放行：$Name" -ForegroundColor Red
}

function Assert-True {
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
    param([string]$Dir, [string]$RelativePath, [string]$Content = 'x')
    $path = Join-Path $Dir $RelativePath
    [void](New-Item -ItemType Directory -Force -Path (Split-Path $path -Parent))
    [System.IO.File]::WriteAllText($path, $Content)
}

function Write-LargeTestFile {
    [OutputType([void])]
    param([string]$Dir, [string]$RelativePath, [int]$Bytes)
    $path = Join-Path $Dir $RelativePath
    [void](New-Item -ItemType Directory -Force -Path (Split-Path $path -Parent))
    $data = [byte[]]::new($Bytes)
    [System.Random]::new(7).NextBytes($data)
    [System.IO.File]::WriteAllBytes($path, $data)
}

function Initialize-GitIdentity {
    [OutputType([void])]
    param([string]$Dir)
    Invoke-SetupGit $Dir @('config', 'user.name', 'hooks-test') | Out-Null
    Invoke-SetupGit $Dir @('config', 'user.email', 'hooks-test@example.invalid') | Out-Null
    Invoke-SetupGit $Dir @('config', 'commit.gpgsign', 'false') | Out-Null
    Invoke-SetupGit $Dir @('config', 'core.autocrlf', 'false') | Out-Null
}

try {
    [void](New-Item -ItemType Directory -Path $script:Root)
    $upstream = Join-Path $script:Root 'upstream.git'
    $origin = Join-Path $script:Root 'origin.git'
    $work = Join-Path $script:Root 'work'
    $author = Join-Path $script:Root 'author'
    $prTree = Join-Path $script:Root 'wt-pr'

    Write-Host "准备临时仓库：$script:Root"
    Invoke-SetupGit $script:Root @('init', '-q', '--bare', '-b', 'develop', $upstream) | Out-Null
    Invoke-SetupGit $script:Root @('init', '-q', '--bare', '-b', 'custom', $origin) | Out-Null
    Invoke-SetupGit $script:Root @('init', '-q', '-b', 'develop', $work) | Out-Null
    Initialize-GitIdentity $work
    Write-TestFile $work 'README.md' "base`n"
    Invoke-SetupGit $work @('add', 'README.md') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'base') | Out-Null
    Invoke-SetupGit $work @('remote', 'add', 'upstream', $upstream) | Out-Null
    Invoke-SetupGit $work @('push', '-q', 'upstream', 'develop') | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', '-b', 'custom') | Out-Null
    Write-TestFile $work 'docs/personal/rules.md' "personal`n"
    Invoke-SetupGit $work @('add', 'docs/personal/rules.md') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'personal rules') | Out-Null
    # 造出超过 100 个个人提交，模拟真实 custom 与作者的差距。
    $tree = (Invoke-SetupGit $work @('rev-parse', 'HEAD^{tree}')).Trim()
    $parent = (Invoke-SetupGit $work @('rev-parse', 'HEAD')).Trim()
    foreach ($i in 1..101) {
        $parent = (Invoke-SetupGit $work @('commit-tree', $tree, '-p', $parent, '-m', "personal $i")).Trim()
    }
    Invoke-SetupGit $work @('update-ref', 'refs/heads/custom', $parent) | Out-Null
    Invoke-SetupGit $work @('remote', 'add', 'origin', $origin) | Out-Null
    # 与真实仓库一致：origin 只抓 custom，install-hooks 负责补上 codex/*、pr/*。
    Invoke-SetupGit $work @('config', 'remote.origin.fetch', '+refs/heads/custom:refs/remotes/origin/custom') | Out-Null
    Invoke-SetupGit $work @('push', '-q', 'origin', 'custom') | Out-Null
    Invoke-SetupGit $work @('fetch', '-q', 'upstream') | Out-Null
    Invoke-SetupGit $work @('fetch', '-q', 'origin') | Out-Null

    & pwsh -NoProfile -File $script:Flow install-hooks -Repo $work
    if ($LASTEXITCODE -ne 0) { throw 'install-hooks 失败' }
    & pwsh -NoProfile -File $script:Flow check-hooks -Repo $work
    if ($LASTEXITCODE -ne 0) { throw 'check-hooks 在安装后仍报告问题' }

    Write-Host 'G1 custom 分支'
    Assert-Blocked 'custom 上直接提交（无标记）' (Invoke-TestGit $work @('commit', '-q', '--allow-empty', '-m', 'direct'))
    Assert-Blocked 'custom 上 --no-verify 提交（无标记）' (Invoke-TestGit $work @('commit', '-q', '--no-verify', '--allow-empty', '-m', 'direct'))
    $timer = [System.Diagnostics.Stopwatch]::StartNew()
    Assert-Allowed 'custom 上提交（adopt）' (Invoke-TestGit $work @('commit', '-q', '--allow-empty', '-m', 'adopted') -Approve 'adopt')
    $timer.Stop()
    Write-Host ("  （带钩子的一次提交耗时 {0:N0} ms）" -f $timer.Elapsed.TotalMilliseconds)
    Assert-Blocked 'reset --hard 回退 custom（即使 adopt）' (Invoke-TestGit $work @('reset', '-q', '--hard', 'HEAD~1') -Approve 'adopt')
    Assert-Blocked 'amend custom（即使 adopt）' (Invoke-TestGit $work @('commit', '-q', '--amend', '--allow-empty', '-m', 'amended') -Approve 'adopt')
    Assert-Blocked 'update-ref 回退 custom（即使 adopt）' (Invoke-TestGit $work @('update-ref', 'refs/heads/custom', 'custom~1') -Approve 'adopt')

    Invoke-SetupGit $work @('checkout', '-q', '-b', 'codex/feature') | Out-Null
    Write-TestFile $work 'feature.txt' "feature`n"
    Invoke-SetupGit $work @('add', 'feature.txt') | Out-Null
    Assert-Allowed 'codex/* 分支上提交（无标记）' (Invoke-TestGit $work @('commit', '-q', '-m', 'feature'))
    Assert-Blocked '删除 custom（即使 adopt）' (Invoke-TestGit $work @('branch', '-D', 'custom') -Approve 'adopt')
    Assert-Blocked 'branch -f 移动 custom（无标记）' (Invoke-TestGit $work @('branch', '-f', 'custom', 'codex/feature'))
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    Assert-Blocked '合并候选进 custom（无标记）' (Invoke-TestGit $work @('merge', '-q', '--no-ff', '-m', 'adopt feature', 'codex/feature'))
    # 被拦的合并会停在「合并进行中」，按拦截提示先 abort 再重试。
    Invoke-SetupGit $work @('merge', '--abort') | Out-Null
    Assert-Allowed '合并候选进 custom（adopt）' (Invoke-TestGit $work @('merge', '-q', '--no-ff', '-m', 'adopt feature', 'codex/feature') -Approve 'adopt')

    Write-Host 'G2 删除分支'
    Invoke-SetupGit $work @('checkout', '-q', '-b', 'codex/unmerged') | Out-Null
    Write-TestFile $work 'unmerged.txt' "wip`n"
    Invoke-SetupGit $work @('add', 'unmerged.txt') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'wip') | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    Assert-Blocked '删除未合入分支（无标记）' (Invoke-TestGit $work @('branch', '-D', 'codex/unmerged'))
    Assert-Allowed '删除未合入分支（cleanup）' (Invoke-TestGit $work @('branch', '-D', 'codex/unmerged') -Approve 'cleanup')
    Assert-Allowed '删除已合入分支（无标记）' (Invoke-TestGit $work @('branch', '-d', 'codex/feature'))
    Invoke-SetupGit $work @('checkout', '-q', '-b', 'codex/pushed') | Out-Null
    Write-TestFile $work 'pushed.txt' "pushed`n"
    Invoke-SetupGit $work @('add', 'pushed.txt') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'pushed') | Out-Null
    Invoke-SetupGit $work @('push', '-q', 'origin', 'codex/pushed') -Approve 'push' | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    Assert-Allowed '删除已推送到远端的分支（无标记）' (Invoke-TestGit $work @('branch', '-D', 'codex/pushed'))

    Write-Host 'G3 推送'
    Assert-Blocked '推送 custom（无标记）' (Invoke-TestGit $work @('push', '-q', 'origin', 'custom'))
    Assert-Allowed '推送 custom（push）' (Invoke-TestGit $work @('push', '-q', 'origin', 'custom') -Approve 'push')
    Assert-Blocked '推送到作者仓库（即使 push）' (Invoke-TestGit $work @('push', '-q', 'upstream', 'custom:refs/heads/from-custom') -Approve 'push')
    Assert-Blocked '强推回退远端 custom（即使 push）' (Invoke-TestGit $work @('push', '-q', '--force', 'origin', 'custom~1:refs/heads/custom') -Approve 'push')
    Assert-Blocked '删除远端 custom（即使 push）' (Invoke-TestGit $work @('push', '-q', 'origin', ':refs/heads/custom') -Approve 'push')

    Write-Host 'G4 给作者的 PR 分支（在共用钩子的另一个 worktree 里）'
    Invoke-SetupGit $work @('worktree', 'add', '-q', '-b', 'pr/good', $prTree, 'upstream/develop') | Out-Null
    Write-TestFile $prTree 'src/fix.txt' "fix`n"
    Invoke-SetupGit $prTree @('add', 'src/fix.txt') | Out-Null
    Invoke-SetupGit $prTree @('commit', '-q', '-m', 'fix') | Out-Null
    Assert-Allowed '推送干净的 pr/* 分支（push）' (Invoke-TestGit $prTree @('push', '-q', 'origin', 'pr/good') -Approve 'push')
    Write-TestFile $prTree 'src/fix.txt' "fix v2`n"
    Invoke-SetupGit $prTree @('add', 'src/fix.txt') | Out-Null
    Invoke-SetupGit $prTree @('commit', '-q', '--amend', '-m', 'fix v2') | Out-Null
    Assert-Allowed '强推 pr/* 分支（push）' (Invoke-TestGit $prTree @('push', '-q', '--force', 'origin', 'pr/good') -Approve 'push')
    Invoke-SetupGit $work @('branch', 'pr/from-custom', 'custom') | Out-Null
    Assert-Blocked '推送从 custom 拉出的 pr/* 分支' (Invoke-TestGit $work @('push', '-q', 'origin', 'pr/from-custom') -Approve 'push')
    Invoke-SetupGit $prTree @('checkout', '-q', '-b', 'pr/leak') | Out-Null
    Write-TestFile $prTree 'docs/personal/notes.md' "notes`n"
    Invoke-SetupGit $prTree @('add', 'docs/personal/notes.md') | Out-Null
    Invoke-SetupGit $prTree @('commit', '-q', '-m', 'leak') | Out-Null
    Assert-Blocked '推送含个人文件的 pr/* 分支（push）' (Invoke-TestGit $prTree @('push', '-q', 'origin', 'pr/leak') -Approve 'push')
    Assert-Allowed '推送含个人文件的 pr/* 分支（push,pr-personal）' (Invoke-TestGit $prTree @('push', '-q', 'origin', 'pr/leak') -Approve 'push,pr-personal')
    Invoke-SetupGit $prTree @('checkout', '-q', '-b', 'pr/launcher', 'pr/good') | Out-Null
    Write-TestFile $prTree '启动Hibiki最新版.bat' "@echo off`r`n"
    Invoke-SetupGit $prTree @('add', '启动Hibiki最新版.bat') | Out-Null
    Invoke-SetupGit $prTree @('commit', '-q', '-m', 'launcher') | Out-Null
    Assert-Blocked '推送含中文名个人文件的 pr/* 分支（push）' (Invoke-TestGit $prTree @('push', '-q', 'origin', 'pr/launcher') -Approve 'push')

    Write-Host 'G5 暂存区检查'
    Invoke-SetupGit $prTree @('checkout', '-q', '-b', 'codex/staging', 'pr/good') | Out-Null
    Write-TestFile $prTree '.codex-test/run.log' "log`n"
    Invoke-SetupGit $prTree @('add', '-f', '.codex-test/run.log') | Out-Null
    Assert-Blocked '提交 .codex-test 证据' (Invoke-TestGit $prTree @('commit', '-q', '-m', 'evidence'))
    Invoke-SetupGit $prTree @('rm', '-q', '--cached', '.codex-test/run.log') | Out-Null
    Write-TestFile $prTree 'voice/line01.OGG' 'fake audio'
    Invoke-SetupGit $prTree @('add', 'voice/line01.OGG') | Out-Null
    Assert-Blocked '提交游戏音频（无标记）' (Invoke-TestGit $prTree @('commit', '-q', '-m', 'audio'))
    Invoke-SetupGit $prTree @('rm', '-q', '--cached', 'voice/line01.OGG') | Out-Null
    Write-LargeTestFile $prTree 'assets/big.bin' (11 * 1024 * 1024)
    Invoke-SetupGit $prTree @('add', 'assets/big.bin') | Out-Null
    Assert-Blocked '提交 11MB 文件（无标记）' (Invoke-TestGit $prTree @('commit', '-q', '-m', 'big'))
    Assert-Allowed '提交 11MB 文件（asset）' (Invoke-TestGit $prTree @('commit', '-q', '-m', 'big') -Approve 'asset')
    Write-TestFile $prTree 'src/normal.txt' "normal`n"
    Invoke-SetupGit $prTree @('add', 'src/normal.txt') | Out-Null
    Assert-Allowed '提交普通文件' (Invoke-TestGit $prTree @('commit', '-q', '-m', 'normal'))

    Write-Host 'G5 合并提交只检查新引入的内容'
    Invoke-SetupGit $script:Root @('clone', '-q', '-b', 'develop', $upstream, $author) | Out-Null
    Initialize-GitIdentity $author
    Write-LargeTestFile $author 'assets/author-big.bin' (12 * 1024 * 1024)
    Write-TestFile $author 'README.md' "base`nauthor change`n"
    Invoke-SetupGit $author @('add', 'assets/author-big.bin', 'README.md') | Out-Null
    Invoke-SetupGit $author @('commit', '-q', '-m', 'author update') | Out-Null
    Invoke-SetupGit $author @('push', '-q', 'origin', 'develop') | Out-Null
    Invoke-SetupGit $work @('fetch', '-q', 'upstream') | Out-Null
    Write-TestFile $work 'README.md' "base`npersonal change`n"
    Invoke-SetupGit $work @('add', 'README.md') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'personal readme') -Approve 'adopt' | Out-Null
    $merge = Invoke-TestGit $work @('merge', '-q', 'upstream/develop')
    if ($merge.Code -eq 0) { throw '预期合并产生冲突，但合并直接成功了' }
    Write-TestFile $work 'README.md' "base`nauthor change`npersonal change`n"
    Invoke-SetupGit $work @('add', 'README.md') | Out-Null
    Write-TestFile $work '.codex-test/merge.log' "log`n"
    Invoke-SetupGit $work @('add', '-f', '.codex-test/merge.log') | Out-Null
    Assert-Blocked '合并时夹带 .codex-test 证据' (Invoke-TestGit $work @('commit', '-q', '--no-edit') -Approve 'adopt')
    Invoke-SetupGit $work @('rm', '-q', '--cached', '.codex-test/merge.log') | Out-Null
    Assert-Allowed '合并作者带大文件的更新（adopt）' (Invoke-TestGit $work @('commit', '-q', '--no-edit') -Approve 'adopt')

    Write-Host '日常操作不应被误拦'
    Assert-AllowedClean '在 custom 上分离 HEAD' (Invoke-TestGit $work @('checkout', '-q', '--detach', 'HEAD~1'))
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    $detachedTree = Join-Path $script:Root 'wt-detached'
    Assert-AllowedClean '主 checkout 在 custom 时新建分离 HEAD 的 worktree' (Invoke-TestGit $work @('worktree', 'add', '-q', '--detach', $detachedTree, 'HEAD~1'))
    Invoke-SetupGit $work @('worktree', 'remove', '--force', $detachedTree) | Out-Null
    Invoke-SetupGit $work @('branch', 'codex/packed-unmerged', 'custom') | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', 'codex/packed-unmerged') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '--allow-empty', '-m', 'packed wip') | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    Assert-AllowedClean 'git pack-refs --all' (Invoke-TestGit $work @('pack-refs', '--all'))
    Assert-AllowedClean 'git gc' (Invoke-TestGit $work @('gc', '-q'))
    Assert-Blocked '打包后删除 custom（即使 adopt）' (Invoke-TestGit $work @('update-ref', '-d', 'refs/heads/custom') -Approve 'adopt')
    Assert-Blocked '打包后删除未合入分支（无标记）' (Invoke-TestGit $work @('branch', '-D', 'codex/packed-unmerged'))
    Assert-Blocked '改名未合入分支（按删除处理，无标记）' (Invoke-TestGit $work @('branch', '-m', 'codex/packed-unmerged', 'codex/renamed'))
    Assert-Allowed '打包后删除未合入分支（cleanup）' (Invoke-TestGit $work @('branch', '-D', 'codex/packed-unmerged') -Approve 'cleanup')

    Write-Host '审查补充：绕过与恢复'
    Invoke-SetupGit $work @('branch', 'codex/sym-target', 'custom') | Out-Null
    Assert-Blocked '把 custom 改成符号引用' (Invoke-TestGit $work @('symbolic-ref', 'refs/heads/custom', 'refs/heads/codex/sym-target'))
    Invoke-SetupGit $work @('checkout', '-q', '-b', 'codex/ff') | Out-Null
    Write-TestFile $work 'ff.txt' "ff`n"
    Invoke-SetupGit $work @('add', 'ff.txt') | Out-Null
    Invoke-SetupGit $work @('commit', '-q', '-m', 'ff') | Out-Null
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null
    Assert-Blocked '快进合并进 custom（无标记）' (Invoke-TestGit $work @('merge', '-q', '--ff-only', 'codex/ff'))
    Invoke-SetupGit $work @('reset', '-q', '--merge', 'HEAD') | Out-Null
    # 只看已跟踪文件：前面用例留下的未跟踪证据文件与本项无关。
    $status = Invoke-SetupGit $work @('status', '--porcelain', '--untracked-files=no')
    $restored = [string]::IsNullOrWhiteSpace($status) -and -not (Test-Path -LiteralPath (Join-Path $work 'ff.txt'))
    Assert-True '被拦的快进合并可用 reset --merge HEAD 恢复干净' $restored $status
    $authorBare = Join-Path $script:Root 'HajiSensai\hibiki.git'
    Invoke-SetupGit $script:Root @('init', '-q', '--bare', $authorBare) | Out-Null
    Invoke-SetupGit $work @('remote', 'add', 'author', $authorBare) | Out-Null
    Assert-Blocked '推送到大小写不同、名字不叫 upstream 的作者仓库（push）' (Invoke-TestGit $work @('push', '-q', 'author', 'codex/ff') -Approve 'push')

    Write-Host '安装与自检'
    $hooksDir = Join-Path $work '.git\hooks'
    & pwsh -NoProfile -File $script:Flow install-hooks -Repo $work | Out-Null
    $backups = @(Get-ChildItem -LiteralPath $hooksDir -Filter '*.pre-fushi.bak')
    Assert-True '重复 install-hooks 不产生备份文件' ($backups.Count -eq 0) (($backups | ForEach-Object { $_.Name }) -join ', ')
    $libPath = Join-Path $hooksDir 'fushi-lib.sh'
    Invoke-SetupGit $work @('checkout', '-q', 'codex/ff') | Out-Null
    Move-Item -LiteralPath $libPath -Destination "$libPath.moved"
    Assert-Blocked '缺少 fushi-lib.sh 时明确拦下并提示重装' (Invoke-TestGit $work @('commit', '-q', '--allow-empty', '-m', 'no lib'))
    Move-Item -LiteralPath "$libPath.moved" -Destination $libPath
    Copy-Item -LiteralPath $libPath -Destination "$libPath.full"
    [System.IO.File]::WriteAllText($libPath, '')
    Assert-Blocked 'fushi-lib.sh 被清空时明确拦下，不静默放行' (Invoke-TestGit $work @('commit', '-q', '--allow-empty', '-m', 'empty lib'))
    Move-Item -LiteralPath "$libPath.full" -Destination $libPath -Force
    Invoke-SetupGit $work @('checkout', '-q', 'custom') | Out-Null

    Write-Host 'check-hooks 发现钩子被改动'
    Add-Content -LiteralPath (Join-Path $hooksDir 'pre-push') -Value 'exit 0'
    & pwsh -NoProfile -File $script:Flow check-hooks -Repo $work | Out-Null
    if ($LASTEXITCODE -eq 1) {
        $script:PassedCount++
        Write-Host '  [通过] check-hooks 报告已安装副本被改动'
    }
    else {
        $script:Failures.Add('check-hooks 没有发现已安装钩子被改动')
        Write-Host '  [失败] check-hooks 未发现改动' -ForegroundColor Red
    }
}
finally {
    Remove-Item Env:FUSHI_APPROVE -ErrorAction SilentlyContinue
    if ($KeepTemp) {
        Write-Host "临时目录保留在：$script:Root"
    }
    elseif (Test-Path -LiteralPath $script:Root) {
        Remove-Item -LiteralPath $script:Root -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ''
Write-Host "通过 $script:PassedCount 项，失败 $($script:Failures.Count) 项。"
if ($script:Failures.Count -gt 0) {
    $script:Failures | ForEach-Object { Write-Host "---`n$_" -ForegroundColor Red }
    exit 1
}
exit 0
