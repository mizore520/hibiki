<#
.SYNOPSIS
  Decide where the smart launcher should build, preparing the shared
  candidate build checkout when needed.

.DESCRIPTION
  Every task worktree used to compile its own Windows bundle from scratch:
  all C++ plugins, the Galgame helper and the Dart AOT graph, even for a
  one-line change. Candidate worktrees now build in one persistent checkout,
  <main>/.worktrees/_candidate-build, which is moved to the candidate commit
  so that CMake/MSBuild objects of unchanged plugins are reused.

  Prints exactly one line on stdout: the repository root that should build.
  Diagnostics go to stderr so the launcher's `for /f` capture stays clean.
  The main checkout, the shared checkout itself, FUSHI_BUILD_IN_PLACE=1 and
  candidates with uncommitted build inputs build in place.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
[Console]::OutputEncoding = [Text.UTF8Encoding]::new($false)

. (Join-Path $PSScriptRoot 'windows_build_inputs.ps1')

function Write-Note {
  param([Parameter(Mandatory = $true)][string] $Message)
  [Console]::Error.WriteLine($Message)
}

function Invoke-Git {
  param(
    [Parameter(Mandatory = $true)][string] $Directory,
    [Parameter(ValueFromRemainingArguments = $true)][string[]] $Arguments
  )

  # Git reports progress on stderr; with 2>&1 under 'Stop', Windows
  # PowerShell would turn the first such line into a terminating error.
  $ErrorActionPreference = 'Continue'
  $output = & git -C $Directory @Arguments 2>&1
  if ($LASTEXITCODE -ne 0) {
    throw "git -C $Directory $($Arguments -join ' ') failed: $($output -join ' ')"
  }
  return @($output | ForEach-Object { "$_" })
}

function Get-NormalizedPath {
  [OutputType([string])]
  param([Parameter(Mandatory = $true)][string] $Path)
  return [IO.Path]::GetFullPath($Path).TrimEnd('\', '/')
}

$repo = Get-NormalizedPath (Resolve-Path -LiteralPath $RepoRoot).Path
$gitDir = Get-NormalizedPath ((Invoke-Git $repo 'rev-parse' '--absolute-git-dir') -join '')
$commonDir = Get-NormalizedPath ((Invoke-Git $repo 'rev-parse' '--path-format=absolute' '--git-common-dir') -join '')

if ($gitDir -ieq $commonDir) {
  # Main checkout: the everyday build stays where it has always been.
  Write-Output $repo
  exit 0
}

$mainRoot = Split-Path -Parent $commonDir
$buildRoot = Get-NormalizedPath (Join-Path $mainRoot '.worktrees\_candidate-build')
if ($repo -ieq $buildRoot) {
  Write-Output $repo
  exit 0
}
if ($env:FUSHI_BUILD_IN_PLACE -eq '1') {
  Write-Note '[BUILD-ROOT] FUSHI_BUILD_IN_PLACE=1; building inside this worktree.'
  Write-Output $repo
  exit 0
}

# Only committed sources can be moved to the shared checkout. Uncommitted
# build inputs would silently be left behind, so build those in place.
$dirty = @(
  Invoke-Git $repo '-c' 'core.quotePath=false' 'status' '--porcelain' '--untracked-files=all' |
    Where-Object { $_ -match '^[ MADRCTU?!]{2} ' } |
    ForEach-Object { $_.Substring(3) } |
    ForEach-Object { ($_ -split ' -> ')[-1].Trim('"') } |
    Where-Object { Test-IsBuildInputPath -RelativePath $_ }
)
if ($dirty.Count -gt 0) {
  Write-Note "[BUILD-ROOT] $($dirty.Count) uncommitted build input(s) in this worktree (first: $($dirty[0]));"
  Write-Note '[BUILD-ROOT] building in place. Commit them to use the shared candidate build.'
  Write-Output $repo
  exit 0
}

$candidateCommit = (Invoke-Git $repo 'rev-parse' '--verify' 'HEAD') -join ''

if (-not (Test-Path -LiteralPath $buildRoot -PathType Container)) {
  Write-Note "[BUILD-ROOT] Creating the shared candidate build checkout: $buildRoot"
  Invoke-Git $mainRoot 'worktree' 'add' '--detach' $buildRoot $candidateCommit | Out-Null
  # Local truth values (skip-worktree files) come from the main checkout, the
  # same way every task worktree is prepared.
  $setup = Join-Path $buildRoot 'tool\setup_worktree.ps1'
  if (Test-Path -LiteralPath $setup -PathType Leaf) {
    Push-Location $buildRoot
    try {
      $ErrorActionPreference = 'Continue'
      & powershell -NoProfile -ExecutionPolicy Bypass -File $setup -SkipBootstrap 2>&1 |
        ForEach-Object { Write-Note "  $_" }
      if ($LASTEXITCODE -ne 0) { throw "setup_worktree.ps1 failed in $buildRoot" }
    }
    finally {
      Pop-Location
      $ErrorActionPreference = 'Stop'
    }
  }
}
else {
  $buildGitDir = Invoke-Git $buildRoot 'rev-parse' '--path-format=absolute' '--git-common-dir'
  if ((Get-NormalizedPath ($buildGitDir -join '')) -ine $commonDir) {
    throw "$buildRoot exists but is not a worktree of this repository."
  }
  # The shared checkout is a build cache, not a place to edit. Refuse to
  # switch it if someone changed tracked files there.
  $local = @(Invoke-Git $buildRoot 'status' '--porcelain' '--untracked-files=no')
  if ($local.Count -gt 0) {
    throw "The shared candidate build checkout has local edits ($($local[0].Trim())). Move or discard them in $buildRoot first."
  }
  $current = (Invoke-Git $buildRoot 'rev-parse' '--verify' 'HEAD') -join ''
  if ($current -ne $candidateCommit) {
    Write-Note "[BUILD-ROOT] Switching the shared candidate build checkout to $($candidateCommit.Substring(0, 10))"
    Invoke-Git $buildRoot 'checkout' '--quiet' '--detach' $candidateCommit | Out-Null
  }
}

Write-Output $buildRoot
