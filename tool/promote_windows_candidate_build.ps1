<#
.SYNOPSIS
  Reuse the verified candidate bundle instead of compiling identical sources
  again.

.DESCRIPTION
  After a candidate was built in <main>/.worktrees/_candidate-build and
  accepted, merging it gives the main checkout a new commit with the same
  build inputs. The build state is content based, so when the shared
  checkout's recorded state equals this checkout's state the finished Release
  bundle is copied over and the stamp is recorded, skipping the full build.

  Files are only added or overwritten, never deleted: the Release directory
  also holds runtime data (for example fushi.exe.WebView2), which is excluded.

  Exit codes: 0 promoted, 3 nothing reusable (the caller builds normally),
  anything else is a failure.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot,

  [Parameter(Mandatory = $true)]
  [string] $State
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$notReusable = 3

function Get-NormalizedPath {
  [OutputType([string])]
  param([Parameter(Mandatory = $true)][string] $Path)
  return [IO.Path]::GetFullPath($Path).TrimEnd('\', '/')
}

$repo = Get-NormalizedPath (Resolve-Path -LiteralPath $RepoRoot).Path
$commonDir = (& git -C $repo rev-parse --path-format=absolute --git-common-dir 2>$null) -join ''
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($commonDir)) {
  exit $notReusable
}
$mainRoot = Split-Path -Parent (Get-NormalizedPath $commonDir)
$candidateRoot = Get-NormalizedPath (Join-Path $mainRoot '.worktrees\_candidate-build')
if ($repo -ieq $candidateRoot) {
  exit $notReusable
}

$releaseRelative = 'fushi\build\windows\x64\runner\Release'
$candidateStamp = Join-Path $candidateRoot 'fushi\build\.last_built_state'
$candidateRelease = Join-Path $candidateRoot $releaseRelative
if (-not (Test-Path -LiteralPath $candidateStamp -PathType Leaf)) {
  exit $notReusable
}
$candidateState = (Get-Content -LiteralPath $candidateStamp -Raw).Trim()
if ($candidateState -ne $State.Trim()) {
  exit $notReusable
}

# The launcher removes the stamp before it starts rebuilding, so a matching
# stamp means this Release directory finished building from exactly $State.
$required = @(
  'fushi.exe',
  'voice_hook\x64\fushi_voice_injector.exe',
  'voice_hook\x64\fushi_voice_hook.dll',
  'voice_hook\x86\fushi_voice_injector.exe',
  'voice_hook\x86\fushi_voice_hook.dll'
)
foreach ($relative in $required) {
  if (-not (Test-Path -LiteralPath (Join-Path $candidateRelease $relative) -PathType Leaf)) {
    Write-Host "[REUSE] Candidate bundle is incomplete ($relative missing); building normally."
    exit $notReusable
  }
}

$targetRelease = Join-Path $repo $releaseRelative
Write-Host "[REUSE] The shared candidate build already contains exactly these sources."
Write-Host "[REUSE] Copying $candidateRelease"
Write-Host "        -> $targetRelease"
New-Item -ItemType Directory -Force -Path $targetRelease | Out-Null

# /E copies subdirectories without purging; /XD keeps runtime data out.
& robocopy $candidateRelease $targetRelease /E /R:1 /W:1 /NFL /NDL /NJH /NP /XD 'fushi.exe.WebView2' | Out-Null
$robocopyExit = $LASTEXITCODE
# robocopy: 0-7 are success variants, 8 and above mean at least one failure.
if ($robocopyExit -ge 8) {
  Write-Host "[ERROR] robocopy failed with exit code $robocopyExit."
  exit 1
}

$stamp = Join-Path $repo 'fushi\build\.last_built_state'
[IO.File]::WriteAllText($stamp, $State.Trim() + "`r`n", [Text.Encoding]::ASCII)
Write-Host '[REUSE] Bundle reused; no compilation needed.'
exit 0
