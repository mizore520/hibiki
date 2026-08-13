<#
.SYNOPSIS
  Prepare the verified SQLite native asset used by Windows Flutter builds.

.DESCRIPTION
  sqlite3 3.3.3 normally downloads its Windows DLL from GitHub inside the Dart
  native-assets hook. Its cache folder is based on Object.hash and can change
  between Dart processes, causing repeated downloads. This script keeps one
  repository-local, SHA-256-pinned copy, reuses an existing verified build copy
  when possible, and otherwise downloads with resume support.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot,

  [string] $CacheDirectory,

  [string] $SeedFile
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function Get-Sha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  # Keep cache verification independent of PowerShell module auto-loading.
  # The launcher normalizes its environment for MSBuild, where Get-FileHash can
  # otherwise be unavailable even though the framework crypto API is present
  # (BUG-1601).
  $stream = [IO.File]::OpenRead($Path)
  try {
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
      $hashBytes = $sha256.ComputeHash($stream)
      return ([BitConverter]::ToString($hashBytes).Replace('-', '')).ToLowerInvariant()
    }
    finally {
      $sha256.Dispose()
    }
  }
  finally {
    $stream.Dispose()
  }
}

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
if ([string]::IsNullOrWhiteSpace($CacheDirectory)) {
  $CacheDirectory = Join-Path $repo '.build-cache\sqlite3'
}
$cache = [IO.Path]::GetFullPath($CacheDirectory)
$repoPrefix = $repo.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
if (-not $cache.StartsWith($repoPrefix, [StringComparison]::OrdinalIgnoreCase)) {
  throw "SQLite cache must stay inside the repository: $cache"
}

$version = '3.3.3'
$releaseTag = "sqlite3-$version"
$assetName = 'sqlite3.x64.windows.dll'
$expectedHash = '563a01a5fbb929844df1a9f6a84f73f7a53b9b183ebda8cb8399d69567adff09'
$target = Join-Path $cache $assetName
$downloadUrl = "https://github.com/simolus3/sqlite3.dart/releases/download/$releaseTag/$assetName"

function Get-SharedCheckoutRoot {
  try {
    $commonDir = (& git -C $repo rev-parse --path-format=absolute --git-common-dir 2>$null |
      Select-Object -First 1)
    if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrWhiteSpace($commonDir)) {
      $resolvedCommonDir = [IO.Path]::GetFullPath($commonDir.Trim())
      if ((Split-Path -Leaf $resolvedCommonDir) -eq '.git') {
        return Split-Path -Parent $resolvedCommonDir
      }
    }
  }
  catch {}
  return $null
}

function Test-VerifiedSqlite {
  param([Parameter(Mandatory = $true)][string] $Path)

  if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    return $false
  }
  $actual = Get-Sha256Hex -Path $Path
  return $actual -eq $expectedHash
}

function Publish-HookCache {
  $hookShared = Join-Path $repo 'fushi\.dart_tool\hooks_runner\shared\sqlite3\build'
  $hookDir = Join-Path $hookShared "download-sqlite3-x64-windows-$releaseTag"
  $hookTarget = Join-Path $hookDir 'sqlite3.dll'
  New-Item -ItemType Directory -Force -Path $hookDir | Out-Null
  Copy-Item -LiteralPath $target -Destination $hookTarget -Force
  Write-Host "[sqlite3] seeded stable hook cache: $hookTarget"
}

if (Test-VerifiedSqlite -Path $target) {
  Write-Host "[sqlite3] verified persistent cache: $target"
  Publish-HookCache
  exit 0
}

New-Item -ItemType Directory -Force -Path $cache | Out-Null
$candidates = @()
if (-not [string]::IsNullOrWhiteSpace($SeedFile)) {
  $candidates += [IO.Path]::GetFullPath($SeedFile)
}
$sharedCheckoutRoot = Get-SharedCheckoutRoot
if ($sharedCheckoutRoot -and
    -not $sharedCheckoutRoot.Equals($repo, [StringComparison]::OrdinalIgnoreCase)) {
  $candidates += Join-Path $sharedCheckoutRoot ".build-cache\sqlite3\$assetName"
  $candidates += Join-Path $sharedCheckoutRoot 'fushi\build\native_assets\windows\sqlite3.dll'
}
$candidates += Join-Path $repo 'fushi\build\native_assets\windows\sqlite3.dll'
$candidates += Get-ChildItem -LiteralPath (Join-Path $repo 'fushi\.dart_tool\hooks_runner\shared\sqlite3\build') `
  -Filter 'sqlite3.dll' -File -Recurse -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty FullName

$seed = $candidates |
  Where-Object { Test-VerifiedSqlite -Path $_ } |
  Select-Object -First 1
if ($seed) {
  Write-Host "[sqlite3] migrating verified existing native asset: $seed"
  Copy-Item -LiteralPath $seed -Destination $target -Force
  Write-Host "[sqlite3] cache ready: $target"
  Publish-HookCache
  exit 0
}

$downloadDir = Join-Path $cache '.downloads'
New-Item -ItemType Directory -Force -Path $downloadDir | Out-Null
$partial = Join-Path $downloadDir "$assetName.partial"
$lastError = $null
foreach ($attempt in 1..3) {
  try {
    Write-Host "[sqlite3] download attempt $attempt/3: $downloadUrl"
    $curl = Get-Command 'curl.exe' -ErrorAction SilentlyContinue
    if ($curl) {
      & $curl.Source --fail --location --silent --show-error `
        --continue-at - --connect-timeout 20 --max-time 180 `
        --output $partial $downloadUrl
      if ($LASTEXITCODE -ne 0) {
        throw "curl.exe failed with exit code $LASTEXITCODE"
      }
    }
    else {
      Invoke-WebRequest -Uri $downloadUrl -OutFile $partial -UseBasicParsing -TimeoutSec 120
    }
    if (-not (Test-VerifiedSqlite -Path $partial)) {
      Remove-Item -LiteralPath $partial -Force -ErrorAction SilentlyContinue
      throw 'downloaded SQLite DLL failed the pinned SHA-256 check'
    }
    Move-Item -LiteralPath $partial -Destination $target -Force
    Write-Host "[sqlite3] cache ready: $target"
    Publish-HookCache
    exit 0
  }
  catch {
    $lastError = $_
    Write-Warning "SQLite attempt $attempt failed: $($_.Exception.Message)"
    if ($attempt -lt 3) {
      Start-Sleep -Seconds 2
    }
  }
}

throw "Unable to prepare SQLite after 3 attempts: $($lastError.Exception.Message)"
