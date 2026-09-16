[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot,

  # The launcher passes this for its explicit `clean` mode.  A normal source
  # build may reuse a verified helper distribution when only Flutter/Dart code
  # changed; clean remains a deliberate escape hatch for rebuilding it.
  [switch] $Force,

  # The local launcher normally needs only the production helper. Keep the
  # full native suite available as an explicit opt-in for maintainers/CI.
  [switch] $RunTests
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$helperRoot = Join-Path $repo 'native\galgame_hook'
$helperToolsDir = Join-Path $helperRoot 'tools'
$buildScript = Join-Path $helperToolsDir 'build_distribution.ps1'
$fingerprintScript = Join-Path $helperToolsDir 'helper_source_fingerprint.ps1'
$distributionRoot = Join-Path $helperRoot 'dist'

if (-not (Test-Path -LiteralPath $buildScript -PathType Leaf)) {
  throw "Galgame helper build script is missing: $buildScript"
}
if (-not (Test-Path -LiteralPath $fingerprintScript -PathType Leaf)) {
  throw "Helper source fingerprint script is missing: $fingerprintScript"
}

function Get-Sha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  $stream = [IO.File]::OpenRead($Path)
  try {
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
      return ([BitConverter]::ToString($sha256.ComputeHash($stream)) -replace '-', '').ToLowerInvariant()
    }
    finally { $sha256.Dispose() }
  }
  finally { $stream.Dispose() }
}

function Test-VerifiedArchiveSidecar {
  param([Parameter(Mandatory = $true)][string] $Archive)

  $sidecar = "$Archive.sha256"
  if (-not (Test-Path -LiteralPath $Archive -PathType Leaf) -or
      -not (Test-Path -LiteralPath $sidecar -PathType Leaf)) {
    return $false
  }
  $recordedSidecar = Get-Content -LiteralPath $sidecar -Raw
  if ($null -eq $recordedSidecar) {
    return $false
  }
  $expected = ($recordedSidecar -replace '[^0-9a-fA-F]', '').ToLowerInvariant()
  if ($expected -notmatch '^[0-9a-f]{64}$') {
    return $false
  }
  return (Get-Sha256Hex -Path $Archive) -eq $expected
}

function Test-ReadyHelperDistribution {
  param([Parameter(Mandatory = $true)][string] $SourceFingerprint)

  $sourceStamp = Join-Path $distributionRoot 'voice_hook_source.sha256'
  if (-not (Test-Path -LiteralPath $sourceStamp -PathType Leaf)) {
    return $false
  }
  $recorded = Get-Content -LiteralPath $sourceStamp -Raw
  if ($null -eq $recorded) {
    return $false
  }
  $recorded = ($recorded -replace '[^0-9a-fA-F]', '').ToLowerInvariant()
  if ($recorded -ne $SourceFingerprint.ToLowerInvariant()) {
    return $false
  }
  foreach ($arch in @('x64', 'x86')) {
    if (-not (Test-VerifiedArchiveSidecar -Archive (Join-Path $distributionRoot "voice_hook_$arch.zip"))) {
      return $false
    }
  }
  return $true
}

# A Flutter-only edit should not rebuild both native helper architectures.  The
# distribution install step performs the same fail-closed archive checks again;
# this early check exists to avoid starting CMake, ctest, Locale Emulator
# extraction, Unity runtime publication, or any network fallback at all.
if (-not $Force -and -not $RunTests) {
  . $fingerprintScript
  $currentHelperFingerprint = Get-FushiHelperSourceFingerprint -SourceRoot $helperRoot
  if (Test-ReadyHelperDistribution -SourceFingerprint $currentHelperFingerprint) {
    Write-Host "[SKIP] Verified galgame helper distribution is current; reusing $distributionRoot"
    Write-Host "[SKIP] Native helper build/package was not repeated."
    exit 0
  }
}

$vswhereCandidates = @()
if ($env:ProgramFiles) {
  $vswhereCandidates += Join-Path $env:ProgramFiles 'Microsoft Visual Studio\Installer\vswhere.exe'
}
if (${env:ProgramFiles(x86)}) {
  $vswhereCandidates += Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
}
$vswhere = $vswhereCandidates |
  Where-Object { Test-Path -LiteralPath $_ -PathType Leaf } |
  Select-Object -First 1

if (-not (Get-Command cmake -CommandType Application -ErrorAction SilentlyContinue)) {
  $vsInstallPath = $null
  if ($vswhere) {
    $vsInstallPath = (& $vswhere -latest -products '*' -property installationPath 2>$null |
      Select-Object -First 1)
  }
  if ($vsInstallPath) {
    $vsCmakeBin = Join-Path $vsInstallPath 'Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin'
    if (Test-Path -LiteralPath (Join-Path $vsCmakeBin 'cmake.exe') -PathType Leaf) {
      $env:PATH = "$vsCmakeBin;$env:PATH"
    }
  }
}

$requiredCommands = @('cmake')
if ($RunTests) {
  $requiredCommands += 'ctest'
}
foreach ($command in $requiredCommands) {
  if (-not (Get-Command $command -CommandType Application -ErrorAction SilentlyContinue)) {
    throw "Required helper build tool is unavailable: $command"
  }
}

if ($RunTests) {
  & powershell -NoProfile -ExecutionPolicy Bypass -File $buildScript -RunTests
}
else {
  & powershell -NoProfile -ExecutionPolicy Bypass -File $buildScript
}
if ($LASTEXITCODE -ne 0) {
  throw "$buildScript failed with exit code $LASTEXITCODE"
}
