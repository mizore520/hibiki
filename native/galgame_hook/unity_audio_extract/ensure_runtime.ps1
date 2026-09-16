<#
.SYNOPSIS
  Ensure the x64 Unity audio extraction runtime exists without needless work.

.DESCRIPTION
  CMake's Visual Studio utility targets are allowed to be visited on every
  native build. Keep the expensive decision here instead of relying on a
  generator-specific output timestamp: a matching source stamp and complete
  runtime cause an immediate local skip; only a missing/changed runtime calls
  the pinned fetch script and dotnet publish.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RuntimeDir,

  [Parameter(Mandatory = $true)]
  [string] $ProjectFile,

  [Parameter(Mandatory = $true)]
  [string] $DotnetExecutable,

  [Parameter(Mandatory = $true)]
  [string] $PowerShellExecutable,

  # Used only to adopt a runtime that was successfully built before this
  # marker was introduced. It still requires every shipped file to exist.
  [switch] $AdoptExisting
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function Get-Sha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  $stream = [IO.File]::OpenRead($Path)
  try {
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
      return (($sha256.ComputeHash($stream) |
        ForEach-Object { $_.ToString('x2') }) -join '')
    }
    finally { $sha256.Dispose() }
  }
  finally { $stream.Dispose() }
}

function Get-SourceStamp {
  param([Parameter(Mandatory = $true)][string[]] $Paths)

  $manifest = [Text.StringBuilder]::new()
  foreach ($path in $Paths) {
    [void] $manifest.Append([IO.Path]::GetFullPath($path))
    [void] $manifest.Append([char]0)
    [void] $manifest.Append((Get-Sha256Hex -Path $path))
    [void] $manifest.Append([Environment]::NewLine)
  }
  $bytes = [Text.Encoding]::UTF8.GetBytes($manifest.ToString())
  $sha256 = [Security.Cryptography.SHA256]::Create()
  try {
    return (($sha256.ComputeHash($bytes) |
      ForEach-Object { $_.ToString('x2') }) -join '')
  }
  finally { $sha256.Dispose() }
}

$runtime = [IO.Path]::GetFullPath($RuntimeDir)
$project = [IO.Path]::GetFullPath($ProjectFile)
$dotnet = [IO.Path]::GetFullPath($DotnetExecutable)
$powerShell = [IO.Path]::GetFullPath($PowerShellExecutable)
$fetchScript = Join-Path $PSScriptRoot 'fetch_runtime.ps1'
$programFile = Join-Path $PSScriptRoot 'Program.cs'
$stampFile = Join-Path $runtime '.runtime_ready'

foreach ($path in @($project, $fetchScript, $programFile, $dotnet, $powerShell)) {
  if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
    throw "Unity audio runtime input is missing: $path"
  }
}

$requiredFiles = @(
  'fushi_unity_audio_extract.exe',
  'classdata.tpk',
  'vgmstream-cli.exe',
  'avcodec-vgmstream-59.dll',
  'avformat-vgmstream-59.dll',
  'avutil-vgmstream-57.dll',
  'swresample-vgmstream-4.dll',
  'libatrac9.dll',
  'libcelt-0061.dll',
  'libcelt-0110.dll',
  'libg719_decode.dll',
  'libmpg123-0.dll',
  'libspeex-1.dll',
  'libvorbis.dll',
  'COPYING'
)
$sourceStamp = Get-SourceStamp -Paths @($project, $programFile, $fetchScript)

function Test-CompleteRuntime {
  param([Parameter(Mandatory = $true)][string] $Directory)

  if (-not (Test-Path -LiteralPath $Directory -PathType Container)) {
    return $false
  }
  foreach ($relative in $requiredFiles) {
    $path = Join-Path $Directory $relative
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
      return $false
    }
    if ((Get-Item -LiteralPath $path).Length -le 0) {
      return $false
    }
  }
  return $true
}

if ((Test-CompleteRuntime -Directory $runtime) -and
    (Test-Path -LiteralPath $stampFile -PathType Leaf)) {
  $recorded = Get-Content -LiteralPath $stampFile -Raw
  if ($null -eq $recorded) {
    $recorded = ''
  }
  $recorded = $recorded.Trim().ToLowerInvariant()
  if ($recorded -eq $sourceStamp) {
    Write-Host "[SKIP] Unity audio runtime is current; no download or dotnet publish: $runtime"
    exit 0
  }
}

if ($AdoptExisting -and (Test-CompleteRuntime -Directory $runtime)) {
  New-Item -ItemType Directory -Force -Path $runtime | Out-Null
  Set-Content -LiteralPath $stampFile -Value $sourceStamp -NoNewline -Encoding ascii
  Write-Host "[ADOPT] Existing complete Unity audio runtime marked current: $runtime"
  exit 0
}

New-Item -ItemType Directory -Force -Path $runtime | Out-Null
& $powerShell -NoProfile -ExecutionPolicy Bypass -File $fetchScript -RuntimeDir $runtime
if ($LASTEXITCODE -ne 0) {
  throw "$fetchScript failed with exit code $LASTEXITCODE"
}

$publishArguments = @(
  '--configuration', 'Release',
  '--runtime', 'win-x64',
  '--self-contained', 'true',
  '-p:PublishSingleFile=true',
  '-p:PublishTrimmed=false',
  '--output', $runtime
)
& $dotnet publish $project @publishArguments
if ($LASTEXITCODE -ne 0) {
  throw "$dotnet publish failed with exit code $LASTEXITCODE"
}

if (-not (Test-CompleteRuntime -Directory $runtime)) {
  throw "Unity audio runtime is incomplete after publish: $runtime"
}
Set-Content -LiteralPath $stampFile -Value $sourceStamp -NoNewline -Encoding ascii
Write-Host "[OK] Unity audio runtime is ready: $runtime"
