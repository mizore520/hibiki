<#
.SYNOPSIS
  Prepare a verified, persistent ONNX Runtime DirectML cache for Windows.

.DESCRIPTION
  The Windows OCR runtime uses the official ONNX Runtime DirectML and DirectML
  NuGet packages. Keep their verified extraction outside fushi/build so the
  smart launcher, clean rebuilds, and sibling worktrees reuse the same files.
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

$ortVersion = '1.22.0'
$directmlVersion = '1.15.4'
$packageName = "onnxruntime-directml-$ortVersion"
$target = Join-Path $cache $packageName
$downloads = Join-Path $cache '.downloads'
$ortArchiveName = "microsoft.ml.onnxruntime.directml.$ortVersion.nupkg"
$directmlArchiveName = "microsoft.ai.directml.$directmlVersion.nupkg"
$ortArchive = Join-Path $downloads $ortArchiveName
$directmlArchive = Join-Path $downloads $directmlArchiveName
$ortUrl = "https://api.nuget.org/v3-flatcontainer/microsoft.ml.onnxruntime.directml/$ortVersion/$ortArchiveName"
$directmlUrl = "https://api.nuget.org/v3-flatcontainer/microsoft.ai.directml/$directmlVersion/$directmlArchiveName"
$ortArchiveSha256 = '29f9872d786236b79aa83f94482f3a17c14297e4833768d6d0ed4883ee732e60'
$directmlArchiveSha256 = '4e7cb7ddce8cf837a7a75dc029209b520ca0101470fcdf275c1f49736a3615b9'
$requiredFiles = @(
  'onnxruntime\build\native\include\dml_provider_factory.h',
  'onnxruntime\runtimes\win-x64\native\onnxruntime.lib',
  'onnxruntime\runtimes\win-x64\native\onnxruntime.dll',
  'onnxruntime\runtimes\win-x64\native\onnxruntime_providers_shared.dll',
  'directml\bin\x64-win\DirectML.dll'
)

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

function Get-Sha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  # BUG-1601: module auto-loading can be unavailable in the BAT-normalized
  # MSBuild environment. Use the framework API instead of Get-FileHash.
  $stream = [IO.File]::OpenRead($Path)
  try {
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
      return ([BitConverter]::ToString($sha256.ComputeHash($stream)).Replace('-', '')).ToLowerInvariant()
    }
    finally {
      $sha256.Dispose()
    }
  }
  finally {
    $stream.Dispose()
  }
}

function Test-Archive {
  param(
    [Parameter(Mandatory = $true)][string] $Path,
    [Parameter(Mandatory = $true)][string] $ExpectedSha256
  )

  return (Test-Path -LiteralPath $Path -PathType Leaf) -and
    ((Get-Sha256Hex -Path $Path) -eq $ExpectedSha256)
}

function Test-VerifiedRuntime {
  param([Parameter(Mandatory = $true)][string] $Root)

  if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    return $false
  }
  foreach ($relativePath in $requiredFiles) {
    if (-not (Test-Path -LiteralPath (Join-Path $Root $relativePath) -PathType Leaf)) {
      return $false
    }
  }
  return $true
}

function Get-VerifiedArchive {
  param(
    [Parameter(Mandatory = $true)][string] $Url,
    [Parameter(Mandatory = $true)][string] $Destination,
    [Parameter(Mandatory = $true)][string] $ExpectedSha256
  )

  if (Test-Archive -Path $Destination -ExpectedSha256 $ExpectedSha256) {
    Write-Host "[onnxruntime] verified cached package: $Destination"
    return
  }

  $partial = "$Destination.partial"
  $lastError = $null
  foreach ($attempt in 1..3) {
    try {
      Write-Host "[onnxruntime] download attempt $attempt/3: $Url"
      $curl = Get-Command 'curl.exe' -ErrorAction SilentlyContinue
      if ($curl) {
        & $curl.Source --fail --location --silent --show-error `
          --continue-at - --connect-timeout 20 --max-time 180 `
          --output $partial $Url
        if ($LASTEXITCODE -ne 0 -and
            -not (Test-Archive -Path $partial -ExpectedSha256 $ExpectedSha256)) {
          throw "curl.exe failed with exit code $LASTEXITCODE"
        }
      }
      else {
        Invoke-WebRequest -Uri $Url -OutFile $partial -UseBasicParsing -TimeoutSec 120
      }

      if (-not (Test-Archive -Path $partial -ExpectedSha256 $ExpectedSha256)) {
        Remove-Item -LiteralPath $partial -Force -ErrorAction SilentlyContinue
        throw 'downloaded package failed its pinned SHA-256'
      }
      Move-Item -LiteralPath $partial -Destination $Destination -Force
      return
    }
    catch {
      $lastError = $_
      Write-Warning "ONNX Runtime package attempt $attempt failed: $($_.Exception.Message)"
      if ($attempt -lt 3) {
        Start-Sleep -Seconds 2
      }
    }
  }
  throw "Unable to download verified ONNX Runtime package after 3 attempts: $($lastError.Exception.Message)"
}

if (Test-VerifiedRuntime -Root $target) {
  Write-Host "[onnxruntime] verified persistent DirectML cache: $target"
  exit 0
}

New-Item -ItemType Directory -Force -Path $cache, $downloads | Out-Null
$stage = Join-Path $cache ('.stage-' + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $stage | Out-Null

try {
  $payload = Join-Path $stage $packageName
  $candidates = @()
  if (-not [string]::IsNullOrWhiteSpace($SeedDirectory)) {
    $candidates += [IO.Path]::GetFullPath($SeedDirectory)
  }
  $sharedCheckoutRoot = Get-SharedCheckoutRoot
  if ($sharedCheckoutRoot -and
      -not $sharedCheckoutRoot.Equals($repo, [StringComparison]::OrdinalIgnoreCase)) {
    $candidates += Join-Path $sharedCheckoutRoot ".build-cache\onnxruntime\$packageName"
  }
  $seed = $candidates |
    Where-Object { Test-VerifiedRuntime -Root $_ } |
    Select-Object -First 1

  if ($seed) {
    Write-Host "[onnxruntime] migrating verified existing DirectML runtime: $seed"
    Copy-Item -LiteralPath $seed -Destination $payload -Recurse -Force
  }
  else {
    Get-VerifiedArchive -Url $ortUrl -Destination $ortArchive -ExpectedSha256 $ortArchiveSha256
    Get-VerifiedArchive -Url $directmlUrl -Destination $directmlArchive -ExpectedSha256 $directmlArchiveSha256

    $ortStage = Join-Path $payload 'onnxruntime'
    $directmlStage = Join-Path $payload 'directml'
    New-Item -ItemType Directory -Force -Path $ortStage, $directmlStage | Out-Null
    # bootstrap prepends Git Bash to PATH, where tar.exe is GNU tar and cannot
    # unpack ZIP-based NuGet packages. Select Windows bsdtar explicitly.
    $windowsTar = Join-Path $env:SystemRoot 'System32\tar.exe'
    if (-not (Test-Path -LiteralPath $windowsTar -PathType Leaf)) {
      throw "Windows archive tool not found: $windowsTar"
    }
    Push-Location -LiteralPath $downloads
    try {
      & $windowsTar -xf $ortArchiveName -C $ortStage
      if ($LASTEXITCODE -ne 0) {
        throw "failed to extract $ortArchiveName (exit $LASTEXITCODE)"
      }
      & $windowsTar -xf $directmlArchiveName -C $directmlStage
      if ($LASTEXITCODE -ne 0) {
        throw "failed to extract $directmlArchiveName (exit $LASTEXITCODE)"
      }
    }
    finally {
      Pop-Location
    }
  }

  if (-not (Test-VerifiedRuntime -Root $payload)) {
    throw 'prepared ONNX Runtime DirectML cache is incomplete'
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
