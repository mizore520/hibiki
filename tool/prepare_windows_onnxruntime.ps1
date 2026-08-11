<#
.SYNOPSIS
  Prepare a verified, persistent ONNX Runtime cache for Windows builds.

.DESCRIPTION
  flutter_onnxruntime normally downloads ONNX Runtime under fushi/build.  A
  flutter clean therefore deletes it, and the plugin used to ignore download
  and extraction failures before reporting only a missing-directory error.
  This script validates a project-local cache outside build/, reuses a valid
  legacy build copy when available, and otherwise downloads and verifies the
  pinned runtime before CMake starts.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot,

  [string] $CacheDirectory,

  [string] $SeedDirectory
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
if ([string]::IsNullOrWhiteSpace($CacheDirectory)) {
  $CacheDirectory = Join-Path $repo '.build-cache\onnxruntime'
}
$cache = [IO.Path]::GetFullPath($CacheDirectory)
$repoPrefix = $repo.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
if (-not $cache.StartsWith($repoPrefix, [StringComparison]::OrdinalIgnoreCase)) {
  throw "ONNX Runtime cache must stay inside the repository: $cache"
}

$version = '1.22.0'
$packageName = "onnxruntime-win-x64-$version"
$target = Join-Path $cache $packageName
$downloadUrl = "https://github.com/microsoft/onnxruntime/releases/download/v$version/$packageName.zip"
$required = @{
  'include\onnxruntime_cxx_api.h' = '7606924bbc40810a72fca54d8aff75c9564908301241eb835bc1814a3aee4ad8'
  'lib\onnxruntime.lib' = 'ab00cba665b186c0d29df9c575d34fd2bcc8f9b9ecae997f81610d07b2fc8ebc'
  'lib\onnxruntime.dll' = '579b636403983254346a5c1d80bd28f1519cd1e284cd204f8d4ff41f8d711559'
}

function Test-VerifiedRuntime {
  param([Parameter(Mandatory = $true)][string] $Root)

  if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    return $false
  }
  foreach ($entry in $required.GetEnumerator()) {
    $path = Join-Path $Root $entry.Key
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
      return $false
    }
    $actual = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($actual -ne $entry.Value) {
      return $false
    }
  }
  return $true
}

if (Test-VerifiedRuntime -Root $target) {
  Write-Host "[onnxruntime] verified persistent cache: $target"
  exit 0
}

New-Item -ItemType Directory -Force -Path $cache | Out-Null
$stage = Join-Path $cache ('.stage-' + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $stage | Out-Null

try {
  $payload = Join-Path $stage $packageName
  $candidates = @()
  if (-not [string]::IsNullOrWhiteSpace($SeedDirectory)) {
    $candidates += [IO.Path]::GetFullPath($SeedDirectory)
  }
  $candidates += Join-Path $repo "fushi\build\windows\x64\plugins\flutter_onnxruntime\onnxruntime\$packageName"
  $candidates += Join-Path $repo "hibiki\build\windows\x64\plugins\flutter_onnxruntime\onnxruntime\$packageName"

  $seed = $candidates |
    Where-Object { Test-VerifiedRuntime -Root $_ } |
    Select-Object -First 1
  if ($seed) {
    Write-Host "[onnxruntime] migrating verified existing runtime: $seed"
    Copy-Item -LiteralPath $seed -Destination $payload -Recurse -Force
  }
  else {
    $downloaded = $false
    $lastError = $null
    foreach ($attempt in 1..3) {
      $attemptDir = Join-Path $stage "download-$attempt"
      $zip = Join-Path $attemptDir "$packageName.zip"
      New-Item -ItemType Directory -Path $attemptDir | Out-Null
      try {
        Write-Host "[onnxruntime] download attempt $attempt/3: $downloadUrl"
        $curl = Get-Command 'curl.exe' -ErrorAction SilentlyContinue
        if ($curl) {
          & $curl.Source --fail --location --silent --show-error `
            --connect-timeout 20 --max-time 180 --output $zip $downloadUrl
          if ($LASTEXITCODE -ne 0) {
            throw "curl.exe failed with exit code $LASTEXITCODE"
          }
        }
        else {
          Invoke-WebRequest -Uri $downloadUrl -OutFile $zip -UseBasicParsing -TimeoutSec 120
        }
        if ((Get-Item -LiteralPath $zip).Length -le 0) {
          throw 'downloaded archive is empty'
        }
        Expand-Archive -LiteralPath $zip -DestinationPath $attemptDir -Force
        $extracted = Join-Path $attemptDir $packageName
        if (-not (Test-VerifiedRuntime -Root $extracted)) {
          throw 'downloaded runtime failed the pinned SHA-256 manifest'
        }
        Move-Item -LiteralPath $extracted -Destination $payload
        $downloaded = $true
        break
      }
      catch {
        $lastError = $_
        Write-Warning "ONNX Runtime attempt $attempt failed: $($_.Exception.Message)"
        if ($attempt -lt 3) {
          Start-Sleep -Seconds 2
        }
      }
    }
    if (-not $downloaded) {
      throw "Unable to prepare ONNX Runtime after 3 attempts: $($lastError.Exception.Message)"
    }
  }

  if (-not (Test-VerifiedRuntime -Root $payload)) {
    throw 'prepared ONNX Runtime failed final verification'
  }
  if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Recurse -Force
  }
  Move-Item -LiteralPath $payload -Destination $target
  Write-Host "[onnxruntime] cache ready: $target"
}
finally {
  if (Test-Path -LiteralPath $stage) {
    Remove-Item -LiteralPath $stage -Recurse -Force
  }
}
