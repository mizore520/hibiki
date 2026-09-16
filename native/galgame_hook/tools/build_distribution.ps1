<#
.SYNOPSIS
  Build and package the x64/x86 galgame helper archives.

.DESCRIPTION
  The Windows bundle (build-multiplatform.yml / release-desktop.yml) and any
  manual repack share this entry point. Without -RunTests, only the production
  hook/injector targets and their runtime dependencies are built. -RunTests is
  the explicit full native validation mode used by CI. Output contains only
  the two zip files and sidecars.
#>
[CmdletBinding()]
param(
  [string]$OutputDirectory,
  [switch]$RunTests
)

$ErrorActionPreference = 'Stop'
$sourceRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$buildRoot = Join-Path $sourceRoot 'build'
$buildLogDirectory = Join-Path $buildRoot 'logs'
New-Item -ItemType Directory -Force -Path $buildLogDirectory | Out-Null
$buildLogName = 'gal-helper-build-{0}-{1}.log' -f (Get-Date -Format 'yyyyMMdd-HHmmss-fff'), $PID
$script:BuildLogPath = [IO.Path]::GetFullPath((Join-Path $buildLogDirectory $buildLogName))
$script:BuildFailureExitCode = $null
Set-Content -LiteralPath $script:BuildLogPath -Encoding UTF8 -Value (@(
    'kind=gal-helper-build'
    "started_utc=$([DateTime]::UtcNow.ToString('o'))"
    "repo=$sourceRoot"
    "script=$($MyInvocation.MyCommand.Path)"
    'log_directory_excluded_from_source_fingerprint=true'
  ) -join [Environment]::NewLine)
Write-Host "[BUILD LOG] $script:BuildLogPath"

function Write-BuildLogMarker {
  param([Parameter(Mandatory = $true)][string]$Message)

  $line = "[build] $Message"
  Add-Content -LiteralPath $script:BuildLogPath -Encoding UTF8 -Value $line
  Write-Host $line
}

function Write-BuildLogCommandOutput {
  [CmdletBinding()]
  param(
    [Parameter(ValueFromPipeline = $true)][AllowNull()][object]$InputObject
  )

  process {
    $line = [string]$InputObject
    Add-Content -LiteralPath $script:BuildLogPath -Encoding UTF8 -Value $line
    Write-Host $line
  }
}

trap {
  $caughtError = $_
  try {
    Write-BuildLogMarker "status=failed error=$($caughtError.Exception.ToString())"
  }
  catch {
    # Do not mask the original build error if the log volume becomes unavailable.
  }
  Write-Host "[BUILD LOG] $script:BuildLogPath"
  if ($null -ne $script:BuildFailureExitCode) {
    exit $script:BuildFailureExitCode
  }
  throw $caughtError
}

$fingerprintScript = Join-Path $PSScriptRoot 'helper_source_fingerprint.ps1'
if (-not (Test-Path -LiteralPath $fingerprintScript -PathType Leaf)) {
  throw "Helper source fingerprint script is missing: $fingerprintScript"
}
. $fingerprintScript
$sourceFingerprintBefore = Get-FushiHelperSourceFingerprint -SourceRoot $sourceRoot
Write-BuildLogMarker "source_fingerprint_before=$sourceFingerprintBefore"
if ([string]::IsNullOrWhiteSpace($OutputDirectory)) {
  $outputRoot = [IO.Path]::GetFullPath((Join-Path $sourceRoot 'dist'))
}
elseif ([IO.Path]::IsPathRooted($OutputDirectory)) {
  $outputRoot = [IO.Path]::GetFullPath($OutputDirectory)
}
else {
  $outputRoot = [IO.Path]::GetFullPath((Join-Path $sourceRoot $OutputDirectory))
}
function Invoke-Checked {
  param(
    [Parameter(Mandatory = $true)][string]$FilePath,
    [Parameter(ValueFromRemainingArguments = $true)][string[]]$Arguments
  )
  $commandText = (@($FilePath) + @($Arguments)) -join ' '
  Write-BuildLogMarker "command=$commandText"
  try {
    & $FilePath @Arguments 2>&1 | Write-BuildLogCommandOutput
    $exitCode = $LASTEXITCODE
  }
  catch {
    $commandError = $_
    Write-BuildLogMarker "command_exception=$($commandError.Exception.ToString())"
    throw $commandError
  }
  Write-BuildLogMarker "command_exit_code=$exitCode"
  if ($exitCode -ne 0) {
    $script:BuildFailureExitCode = [int]$exitCode
    throw "$FilePath failed with exit code $exitCode"
  }
}

function Get-Sha256Hex {
  param([Parameter(Mandatory = $true)][string]$Path)
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

function Test-VerifiedArchive {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$ExpectedSha256
  )
  if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    return $false
  }
  $item = Get-Item -LiteralPath $Path
  return $item.Length -gt 0 -and
    (Get-Sha256Hex -Path $Path) -eq $ExpectedSha256.ToLowerInvariant()
}

function Get-VerifiedArchive {
  param(
    [Parameter(Mandatory = $true)][string]$Url,
    [Parameter(Mandatory = $true)][string]$Destination,
    [Parameter(Mandatory = $true)][string]$ExpectedSha256,
    [Parameter(Mandatory = $true)][string]$Label
  )

  if (Test-VerifiedArchive -Path $Destination -ExpectedSha256 $ExpectedSha256) {
    Write-BuildLogMarker "verified cached package label=$Label path=$Destination"
    return
  }

  $curl = Get-Command 'curl.exe' -ErrorAction SilentlyContinue
  if (-not $curl) {
    throw 'curl.exe is required to download the galgame helper packages'
  }
  $partial = "$Destination.partial"
  $lastError = $null
  for ($attempt = 1; $attempt -le 3; $attempt++) {
    try {
      if (Test-VerifiedArchive -Path $partial -ExpectedSha256 $ExpectedSha256) {
        Move-Item -LiteralPath $partial -Destination $Destination -Force
        return
      }
      Write-BuildLogMarker "download attempt $attempt/3 label=$Label url=$Url"
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
        if (Test-VerifiedArchive -Path $partial -ExpectedSha256 $ExpectedSha256) {
          Move-Item -LiteralPath $partial -Destination $Destination -Force
          return
        }
        throw "curl.exe failed with exit code $exitCode"
      }
      if (-not (Test-VerifiedArchive -Path $partial -ExpectedSha256 $ExpectedSha256)) {
        Remove-Item -LiteralPath $partial -Force -ErrorAction SilentlyContinue
        throw "downloaded $Label failed its pinned SHA-256 check"
      }
      Move-Item -LiteralPath $partial -Destination $Destination -Force
      return
    }
    catch {
      $lastError = $_
      Write-BuildLogMarker "download attempt failed label=$Label error=$($_.Exception.Message)"
      if ($attempt -lt 3) {
        Start-Sleep -Seconds 2
      }
    }
  }
  throw "Unable to download verified helper package after 3 attempts: $($lastError.Exception.Message)"
}

function Reset-StageDirectory {
  param([Parameter(Mandatory = $true)][string]$Path)
  $full = [IO.Path]::GetFullPath($Path)
  $prefix = $outputRoot.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
  if (-not $full.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Refusing to reset stage directory outside output root: $full"
  }
  if (Test-Path -LiteralPath $full) {
    Remove-Item -LiteralPath $full -Recurse -Force
  }
  New-Item -ItemType Directory -Force -Path $full | Out-Null
}

function Get-StageRelativePath {
  # CI runs this on the windows runner under Windows PowerShell 5.1 (.NET Framework
  # 4.x), which has NO [IO.Path]::GetRelativePath -- that API is .NET Core /
  # netstandard2.1+ only. Calling it there throws "does not contain a method named
  # GetRelativePath" and takes the whole packaging step down with it. Same
  # prefix-trim shape as Reset-StageDirectory above; emits forward slashes so the
  # result lines up with the $expected manifest.
  param(
    [Parameter(Mandatory = $true)][string]$Root,
    [Parameter(Mandatory = $true)][string]$FullName
  )
  $rootPrefix = [IO.Path]::GetFullPath($Root).TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
  $full = [IO.Path]::GetFullPath($FullName)
  # OrdinalIgnoreCase mirrors GetRelativePath's own Windows comparison. Appending the
  # separator before comparing is load-bearing: a bare StartsWith would treat
  # "<root>extra\file" as living inside "<root>". A staged file outside its arch root
  # is a packaging bug, so fail loudly instead of emitting a "..\" path that would
  # only surface later as a baffling manifest diff.
  if (-not $full.StartsWith($rootPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Staged file escapes its arch root ($Root): $full"
  }
  return $full.Substring($rootPrefix.Length).Replace('\', '/')
}

New-Item -ItemType Directory -Force -Path $outputRoot | Out-Null
Write-BuildLogMarker "output_root=$outputRoot"

foreach ($config in @(
  @{ Arch = 'x64'; GeneratorArch = 'x64' },
  @{ Arch = 'x86'; GeneratorArch = 'Win32' }
)) {
  $arch = $config.Arch
  $buildDir = Join-Path $buildRoot $arch
  Write-BuildLogMarker "stage=$arch configure"
  Invoke-Checked -FilePath cmake -Arguments @(
    '-S', $sourceRoot, '-B', $buildDir, '-A', $config.GeneratorArch
  )
  if ($RunTests) {
    Write-BuildLogMarker "stage=$arch build mode=full-native-suite"
    Invoke-Checked -FilePath cmake -Arguments @(
      '--build', $buildDir, '--config', 'Release', '--parallel'
    )
  }
  else {
    # The launcher only needs these two shipped targets. Every native test is
    # an independent add_executable and therefore belongs to the default ALL
    # target; asking CMake for the production targets avoids compiling the
    # entire test suite during an ordinary local game-build iteration.
    Write-BuildLogMarker "stage=$arch build mode=production-only"
    Invoke-Checked -FilePath cmake -Arguments @(
      '--build', $buildDir, '--config', 'Release',
      '--parallel', '--target', 'fushi_voice_hook', 'fushi_voice_injector'
    )
  }
  if ($RunTests) {
    # --no-tests=error: ctest defaults to returning 0 when NO test is registered,
    # so a CMakeLists refactor that stops registering the suite would read as a
    # pass. Same "zero tests executed masquerades as green" family as BUG-1157.
    # Matches .github/workflows/native-fushidicts-gate.yml.
    Write-BuildLogMarker "stage=$arch test"
    Invoke-Checked -FilePath ctest -Arguments @(
      '--test-dir', $buildDir, '-C', 'Release', '--output-on-failure',
      '--no-tests=error'
    )
  }
}

function Get-SharedCheckoutRoot {
  param([Parameter(Mandatory = $true)][string]$FallbackRoot)

  $fallback = [IO.Path]::GetFullPath($FallbackRoot)
  try {
    if (Get-Command git -CommandType Application -ErrorAction SilentlyContinue) {
      $commonDirOutput = & git -C $fallback rev-parse --path-format=absolute --git-common-dir 2>$null
      $gitExitCode = $LASTEXITCODE
      $commonDir = ($commonDirOutput | Select-Object -First 1)
      if ($gitExitCode -eq 0 -and -not [string]::IsNullOrWhiteSpace($commonDir)) {
        $resolvedCommonDir = [IO.Path]::GetFullPath($commonDir.Trim())
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

$stageX64 = Join-Path $outputRoot 'x64'
$stageX86 = Join-Path $outputRoot 'x86'
Reset-StageDirectory $stageX64
Reset-StageDirectory $stageX86

$releaseX64 = Join-Path $buildRoot 'x64\Release'
$releaseX86 = Join-Path $buildRoot 'x86\Release'
foreach ($file in @(
  'fushi_voice_injector.exe',
  'fushi_voice_hook.dll',
  'LunaHook64.dll',
  'LunaHost64.dll'
)) {
  Copy-Item -LiteralPath (Join-Path $releaseX64 $file) -Destination $stageX64 -Force
}
$unityAudioRuntimeFiles = @(
  'unity_audio_runtime/fushi_unity_audio_extract.exe',
  'unity_audio_runtime/classdata.tpk',
  'unity_audio_runtime/vgmstream-cli.exe',
  'unity_audio_runtime/avcodec-vgmstream-59.dll',
  'unity_audio_runtime/avformat-vgmstream-59.dll',
  'unity_audio_runtime/avutil-vgmstream-57.dll',
  'unity_audio_runtime/swresample-vgmstream-4.dll',
  'unity_audio_runtime/libatrac9.dll',
  'unity_audio_runtime/libcelt-0061.dll',
  'unity_audio_runtime/libcelt-0110.dll',
  'unity_audio_runtime/libg719_decode.dll',
  'unity_audio_runtime/libmpg123-0.dll',
  'unity_audio_runtime/libspeex-1.dll',
  'unity_audio_runtime/libvorbis.dll',
  'unity_audio_runtime/COPYING'
)
foreach ($file in $unityAudioRuntimeFiles) {
  $destination = Join-Path $stageX64 $file
  New-Item -ItemType Directory -Path (Split-Path -Parent $destination) -Force |
    Out-Null
  Copy-Item -LiteralPath (Join-Path $releaseX64 $file) -Destination $destination -Force
}
foreach ($file in @(
  'fushi_voice_injector.exe',
  'fushi_voice_hook.dll',
  'LunaHook32.dll',
  'LunaHost32.dll'
)) {
  Copy-Item -LiteralPath (Join-Path $releaseX86 $file) -Destination $stageX86 -Force
}

# Locale Emulator 2.5.0.1 (LGPL-3.0), pinned by version and SHA-256 for x86.
$tempBase = if ($env:RUNNER_TEMP) { $env:RUNNER_TEMP } else { [IO.Path]::GetTempPath() }
$leDir = Join-Path $tempBase 'hibiki-locale-emulator-2.5.0.1'
$leUrl = 'https://github.com/xupefei/Locale-Emulator/releases/download/v2.5.0.1/Locale.Emulator.2.5.0.1.zip'
$expectedLeSha = '808ff584426d52cc775ad6406da00622f454be95bd4c8fbca42eef4b7235ad5c'
$repositoryRoot = Get-SharedCheckoutRoot -FallbackRoot $sourceRoot
$helperDownloadCache = Join-Path $repositoryRoot '.build-cache\galgame_hook\downloads'
New-Item -ItemType Directory -Force -Path $helperDownloadCache | Out-Null
$leZip = Join-Path $helperDownloadCache 'Locale.Emulator.2.5.0.1.zip'
Get-VerifiedArchive -Url $leUrl -Destination $leZip -ExpectedSha256 $expectedLeSha -Label 'Locale Emulator 2.5.0.1'
$leLicenseSource = Join-Path $sourceRoot 'third_party/locale_emulator/LICENSE-LGPL.txt'
$expectedLeLicenseSha = 'ea8af5e789cb2d4e9b10bce3874982ade163b749b6bfbdb32e2df21c4d106de1'
$actualLeSha = Get-Sha256Hex -Path $leZip
if ($actualLeSha -ne $expectedLeSha) {
  throw "Locale Emulator SHA-256 mismatch: $actualLeSha"
}
if (Test-Path -LiteralPath $leDir) {
  $tempRoot = [IO.Path]::GetFullPath($tempBase).TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
  $leFull = [IO.Path]::GetFullPath($leDir)
  if (-not $leFull.StartsWith($tempRoot, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Refusing to reset Locale Emulator temp directory outside temp root: $leFull"
  }
  Remove-Item -LiteralPath $leFull -Recurse -Force
}
Expand-Archive -LiteralPath $leZip -DestinationPath $leDir -Force
Copy-Item -LiteralPath (Join-Path $leDir 'LoaderDll.dll') -Destination $stageX86 -Force
Copy-Item -LiteralPath (Join-Path $leDir 'LocaleEmulator.dll') -Destination $stageX86 -Force

# The pinned source tree carries the complete LGPL-3.0 text as a tracked,
# offline license copy. Do not make a successful binary build depend on a
# second raw.githubusercontent.com request; reject a missing or modified copy
# instead of silently omitting or substituting the license.
if (-not (Test-Path -LiteralPath $leLicenseSource -PathType Leaf)) {
  throw "Locale Emulator license source is missing: $leLicenseSource"
}
$actualLeLicenseSha = Get-Sha256Hex -Path $leLicenseSource
if ($actualLeLicenseSha -ne $expectedLeLicenseSha) {
  throw "Locale Emulator license SHA-256 mismatch: $actualLeLicenseSha"
}
$leLicenseDestination = Join-Path $stageX86 'LocaleEmulator-LGPL-3.0.txt'
Copy-Item -LiteralPath $leLicenseSource -Destination $leLicenseDestination -Force
$stagedLeLicenseSha = Get-Sha256Hex -Path $leLicenseDestination
if ($stagedLeLicenseSha -ne $expectedLeLicenseSha) {
  throw "Staged Locale Emulator license SHA-256 mismatch: $stagedLeLicenseSha"
}
Write-BuildLogMarker "locale_emulator_license source=repository_pinned sha256=$actualLeLicenseSha destination=$leLicenseDestination"

$expected = @{
  x64 = @(
    'fushi_voice_injector.exe',
    'fushi_voice_hook.dll',
    'LunaHook64.dll',
    'LunaHost64.dll',
    'unity_audio_runtime/fushi_unity_audio_extract.exe',
    'unity_audio_runtime/classdata.tpk',
    'unity_audio_runtime/vgmstream-cli.exe',
    'unity_audio_runtime/avcodec-vgmstream-59.dll',
    'unity_audio_runtime/avformat-vgmstream-59.dll',
    'unity_audio_runtime/avutil-vgmstream-57.dll',
    'unity_audio_runtime/swresample-vgmstream-4.dll',
    'unity_audio_runtime/libatrac9.dll',
    'unity_audio_runtime/libcelt-0061.dll',
    'unity_audio_runtime/libcelt-0110.dll',
    'unity_audio_runtime/libg719_decode.dll',
    'unity_audio_runtime/libmpg123-0.dll',
    'unity_audio_runtime/libspeex-1.dll',
    'unity_audio_runtime/libvorbis.dll',
    'unity_audio_runtime/COPYING'
  )
  x86 = @('fushi_voice_injector.exe', 'fushi_voice_hook.dll', 'LunaHook32.dll', 'LunaHost32.dll', 'LoaderDll.dll', 'LocaleEmulator.dll', 'LocaleEmulator-LGPL-3.0.txt')
}
foreach ($arch in @('x64', 'x86')) {
  $stage = Join-Path $outputRoot $arch
  $actual = @(
    Get-ChildItem -LiteralPath $stage -File -Recurse |
      ForEach-Object { Get-StageRelativePath -Root $stage -FullName $_.FullName } |
      Sort-Object
  )
  $wanted = @($expected[$arch] | Sort-Object)
  if (Compare-Object $wanted $actual) {
    throw "arch $arch staged files differ: $($actual -join ', ')"
  }

  $zip = Join-Path $outputRoot "voice_hook_$arch.zip"
  Compress-Archive -Path (Join-Path $stage '*') -DestinationPath $zip -Force
  $hash = Get-Sha256Hex -Path $zip
  Set-Content -LiteralPath "$zip.sha256" -Value $hash -NoNewline
  Write-BuildLogMarker "$arch sha256=$hash"
}

# Staging is packaging-only and must not be copied into the app bundle.
foreach ($stage in @($stageX64, $stageX86)) {
  Remove-Item -LiteralPath $stage -Recurse -Force
}

# A zip hash proves archive integrity, not that the archive belongs to the
# current checkout. Record the deterministic build-input identity only after
# the build completes, and reject a source tree that changed underneath it.
$sourceFingerprintAfter = Get-FushiHelperSourceFingerprint -SourceRoot $sourceRoot
if ($sourceFingerprintAfter -ne $sourceFingerprintBefore) {
  throw "Galgame helper sources changed during build: before=$sourceFingerprintBefore after=$sourceFingerprintAfter"
}
Set-Content -LiteralPath (Join-Path $outputRoot 'voice_hook_source.sha256') `
  -Value $sourceFingerprintAfter -NoNewline -Encoding ascii

Write-BuildLogMarker "status=success output_root=$outputRoot source_fingerprint=$sourceFingerprintAfter"
Write-Host "Helper distribution archives ready: $outputRoot"
Write-Host "[BUILD LOG] $script:BuildLogPath"
