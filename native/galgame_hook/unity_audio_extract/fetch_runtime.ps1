param(
  [Parameter(Mandatory = $true)]
  [string]$RuntimeDir
)

$ErrorActionPreference = 'Stop'
$runtimePath = [System.IO.Path]::GetFullPath($RuntimeDir)
New-Item -ItemType Directory -Force -Path $runtimePath | Out-Null

$requiredFiles = @(
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
function Test-CompleteRuntime {
  foreach ($relative in $requiredFiles) {
    $path = Join-Path $runtimePath $relative
    if (-not (Test-Path -LiteralPath $path -PathType Leaf) -or
        (Get-Item -LiteralPath $path).Length -le 0) {
      return $false
    }
  }
  return $true
}

# Do not treat just the two primary files as success: an interrupted or
# hand-copied runtime may contain them while missing a vgmstream DLL. The
# managed fushi_unity_audio_extract.exe is deliberately not in this list: it is
# produced by dotnet publish, so a missing managed output must not redownload
# the already-complete third-party runtime.
if (Test-CompleteRuntime) {
  exit 0
}

function Get-Sha256([string]$Path) {
  $stream = [System.IO.File]::OpenRead($Path)
  try {
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try {
      return ([System.BitConverter]::ToString($sha.ComputeHash($stream))).Replace('-', '').ToLowerInvariant()
    }
    finally {
      $sha.Dispose()
    }
  }
  finally {
    $stream.Dispose()
  }
}

function Test-VerifiedArchive([string]$Path, [string]$ExpectedSha256) {
  if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    return $false
  }
  $item = Get-Item -LiteralPath $Path
  return $item.Length -gt 0 -and (Get-Sha256 $Path) -eq $ExpectedSha256.ToLowerInvariant()
}

function Get-VerifiedArchive {
  param(
    [Parameter(Mandatory = $true)][string]$Url,
    [Parameter(Mandatory = $true)][string]$Destination,
    [Parameter(Mandatory = $true)][string]$ExpectedSha256,
    [Parameter(Mandatory = $true)][string]$Label
  )

  if (Test-VerifiedArchive $Destination $ExpectedSha256) {
    Write-Host "[unity-audio] verified cached package: $Destination"
    return
  }

  $curl = Get-Command 'curl.exe' -ErrorAction SilentlyContinue
  if (-not $curl) {
    throw 'curl.exe is required to download the Unity audio runtime packages'
  }
  $partial = "$Destination.partial"
  $lastError = $null
  for ($attempt = 1; $attempt -le 3; $attempt++) {
    try {
      if (Test-VerifiedArchive $partial $ExpectedSha256) {
        Move-Item -LiteralPath $partial -Destination $Destination -Force
        return
      }
      Write-Host "[unity-audio] download attempt $attempt/3 ($Label): $Url"
      $arguments = @(
        '--fail', '--location', '--silent', '--show-error',
        '--http1.1', '--connect-timeout', '20', '--max-time', '300',
        '--output', $partial
      )
      if ((Test-Path -LiteralPath $partial -PathType Leaf) -and
          (Get-Item -LiteralPath $partial).Length -gt 0) {
        $arguments += @('--continue-at', '-')
      }
      $arguments += $Url
      & $curl.Source @arguments
      $exitCode = $LASTEXITCODE
      if ($exitCode -ne 0) {
        if (Test-VerifiedArchive $partial $ExpectedSha256) {
          Move-Item -LiteralPath $partial -Destination $Destination -Force
          return
        }
        throw "curl.exe failed with exit code $exitCode"
      }
      if (-not (Test-VerifiedArchive $partial $ExpectedSha256)) {
        Remove-Item -LiteralPath $partial -Force -ErrorAction SilentlyContinue
        throw "downloaded $Label failed its pinned SHA-256 check"
      }
      Move-Item -LiteralPath $partial -Destination $Destination -Force
      return
    }
    catch {
      $lastError = $_
      Write-Warning "Unity audio package attempt $attempt failed: $($_.Exception.Message)"
      if ($attempt -lt 3) {
        Start-Sleep -Seconds 2
      }
    }
  }
  throw "Unable to download verified Unity audio package after 3 attempts: $($lastError.Exception.Message)"
}

function Get-SharedCheckoutRoot {
  param([Parameter(Mandatory = $true)][string]$FallbackRoot)

  $fallback = [System.IO.Path]::GetFullPath($FallbackRoot)
  try {
    if (Get-Command git -CommandType Application -ErrorAction SilentlyContinue) {
      $commonDirOutput = & git -C $fallback rev-parse --path-format=absolute --git-common-dir 2>$null
      $gitExitCode = $LASTEXITCODE
      $commonDir = ($commonDirOutput | Select-Object -First 1)
      if ($gitExitCode -eq 0 -and -not [string]::IsNullOrWhiteSpace($commonDir)) {
        $resolvedCommonDir = [System.IO.Path]::GetFullPath($commonDir.Trim())
        if ((Split-Path -Leaf $resolvedCommonDir) -eq '.git') {
          return Split-Path -Parent $resolvedCommonDir
        }
      }
    }
  }
  catch {
    # A source archive without Git still has a valid local fallback cache.
  }
  return $fallback
}

# Keep archives in the ignored repository cache. A failed transfer therefore
# remains resumable, and a later CMake build does not redownload packages that
# already passed their checksums.
$checkoutRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..\..\..'))
$repositoryRoot = Get-SharedCheckoutRoot -FallbackRoot $checkoutRoot
$downloadRoot = Join-Path $repositoryRoot '.build-cache\galgame_hook\unity-audio\downloads'
if (-not $repositoryRoot.Equals($checkoutRoot, [StringComparison]::OrdinalIgnoreCase)) {
  Write-Host "[unity-audio] using shared download cache: $downloadRoot"
}
New-Item -ItemType Directory -Force -Path $downloadRoot | Out-Null
$vgmZip = Join-Path $downloadRoot 'vgmstream-win64-r2117.zip'
$uabeaZip = Join-Path $downloadRoot 'uabea-windows-v8.zip'
Get-VerifiedArchive `
  -Url 'https://github.com/vgmstream/vgmstream/releases/download/r2117/vgmstream-win64.zip' `
  -Destination $vgmZip `
  -ExpectedSha256 '6c4a8a3813864fefed081bbd337dbc0ad93bf88e0b92f5db98d7ab258b22dc6c' `
  -Label 'vgmstream r2117'
Get-VerifiedArchive `
  -Url 'https://github.com/nesrak1/UABEA/releases/download/v8/uabea-windows.zip' `
  -Destination $uabeaZip `
  -ExpectedSha256 '0623ab1dc099a6397c3a7e72782b91405e60b286c6825fb6fa21e553ff2ea580' `
  -Label 'UABEA v8'

$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) (
  'hibiki-unity-audio-runtime-' + [System.Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $tempRoot | Out-Null
try {
  Add-Type -AssemblyName System.IO.Compression.FileSystem
  $vgmStage = Join-Path $tempRoot 'vgmstream'
  $uabeaDir = Join-Path $tempRoot 'uabea'
  New-Item -ItemType Directory -Path $vgmStage, $uabeaDir | Out-Null
  [System.IO.Compression.ZipFile]::ExtractToDirectory($vgmZip, $vgmStage)
  [System.IO.Compression.ZipFile]::ExtractToDirectory($uabeaZip, $uabeaDir)
  $uabeaClassdata = Join-Path $uabeaDir 'classdata.tpk'
  if (-not (Test-Path -LiteralPath $uabeaClassdata -PathType Leaf)) {
    throw "UABEA v8 archive has no classdata.tpk: $uabeaClassdata"
  }
  Get-ChildItem -LiteralPath $vgmStage -Force | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination $runtimePath -Recurse -Force
  }
  Copy-Item -LiteralPath $uabeaClassdata -Destination $classdata -Force
}
finally {
  if (Test-Path -LiteralPath $tempRoot) {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force
  }
}
