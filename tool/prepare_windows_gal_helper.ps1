[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
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

foreach ($command in @('cmake', 'ctest')) {
  if (-not (Get-Command $command -CommandType Application -ErrorAction SilentlyContinue)) {
    throw "Required helper build tool is unavailable: $command"
  }
}

$buildScript = Join-Path $repo 'native\galgame_hook\tools\build_distribution.ps1'
if (-not (Test-Path -LiteralPath $buildScript -PathType Leaf)) {
  throw "Galgame helper build script is missing: $buildScript"
}

& powershell -NoProfile -ExecutionPolicy Bypass -File $buildScript -RunTests
if ($LASTEXITCODE -ne 0) {
  throw "$buildScript failed with exit code $LASTEXITCODE"
}
