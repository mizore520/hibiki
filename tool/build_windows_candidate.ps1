[CmdletBinding()]
param(
    [string]$RepoRoot = (Join-Path $PSScriptRoot '..'),
    [string]$FlutterExecutable,
    [switch]$UseExistingBuild,
    [string]$MihonDownloadCache,
    [string]$MihonJdkRoot,
    [string]$CandidateOutputDir
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

# Visual Studio 2026/MSBuild file tracking can hang even during CMake's compiler
# identification projects. Apply the repository's launcher workaround to the
# whole candidate pipeline, including post-build native helper compilation.
$env:TrackFileAccess = 'false'

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$app = Join-Path $repo 'fushi'
$pwsh = (Get-Command pwsh.exe -ErrorAction Stop).Source
$baseRelease = Join-Path $app 'build\windows\x64\runner\Release'
if ([string]::IsNullOrWhiteSpace($CandidateOutputDir)) {
    $CandidateOutputDir = Join-Path $app 'build\windows-candidate\Release'
}
$release = [IO.Path]::GetFullPath($CandidateOutputDir)
$buildRoot = [IO.Path]::GetFullPath((Join-Path $app 'build'))
$buildPrefix = $buildRoot.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
if (-not $release.StartsWith($buildPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Candidate output must stay under the app build directory: $release"
}

# A timed-out caller can leave the Windows child process running. Fail a second
# invocation immediately instead of letting two packagers delete/copy the same
# candidate directory or contend for Gradle's cache locks.
[IO.Directory]::CreateDirectory($buildRoot) | Out-Null
$candidateLockPath = Join-Path $buildRoot '.windows-candidate-build.lock'
try {
    $candidateLock = [IO.File]::Open(
        $candidateLockPath,
        [IO.FileMode]::OpenOrCreate,
        [IO.FileAccess]::ReadWrite,
        [IO.FileShare]::None
    )
}
catch {
    throw "Another Windows candidate build is already running: $candidateLockPath"
}

if (-not [Runtime.InteropServices.RuntimeInformation]::IsOSPlatform(
        [Runtime.InteropServices.OSPlatform]::Windows)) {
    throw 'Windows candidate packaging can only run on Windows.'
}

if (-not $UseExistingBuild) {
    $unlock = Join-Path $repo 'tool\check_windows_runtime_unlocked.ps1'
    & powershell -NoProfile -ExecutionPolicy Bypass -File $unlock `
        -BundleDirectory $baseRelease
    if ($LASTEXITCODE -ne 0) { throw "Windows build lock preflight failed ($LASTEXITCODE)" }
    $torrentRoot = Join-Path $repo 'native\fushi_torrent\prebuilt\windows-x64'
    foreach ($name in @(
        'fushi_torrent_ffi.dll',
        'torrent-rasterbar.dll',
        'libssl-3-x64.dll',
        'libcrypto-3-x64.dll'
    )) {
        if (-not (Test-Path -LiteralPath (Join-Path $torrentRoot $name) -PathType Leaf)) {
            throw "Missing Windows torrent runtime before candidate build: $name"
        }
    }

    if ([string]::IsNullOrWhiteSpace($FlutterExecutable)) {
        if ($env:FUSHI_FLUTTER) {
            $FlutterExecutable = $env:FUSHI_FLUTTER
        }
        elseif (Test-Path -LiteralPath 'C:\flutter\bin\flutter.bat') {
            $FlutterExecutable = 'C:\flutter\bin\flutter.bat'
        }
        else {
            $FlutterExecutable = (Get-Command flutter.bat -ErrorAction Stop).Source
        }
    }
    if (-not (Test-Path -LiteralPath $FlutterExecutable -PathType Leaf)) {
        throw "Flutter executable not found: $FlutterExecutable"
    }

    Push-Location $app
    try {
        & $FlutterExecutable build windows --release --no-pub
        if ($LASTEXITCODE -ne 0) { throw "Flutter Windows build failed ($LASTEXITCODE)" }
    }
    finally { Pop-Location }
}

if (-not (Test-Path -LiteralPath $baseRelease -PathType Container)) {
    throw "Windows base Release directory not found: $baseRelease"
}
if (Test-Path -LiteralPath $release) {
    Remove-Item -LiteralPath $release -Recurse -Force
}
New-Item -ItemType Directory -Force -Path $release | Out-Null
Get-ChildItem -LiteralPath $baseRelease -Force |
    Where-Object {
        $_.Name -ne 'fushi-candidate-manifest.json' -and
        $_.Name -notlike '*.WebView2'
    } |
    ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $release -Recurse -Force
    }

$runtimePackager = Join-Path $repo 'tool\package_windows_runtime.ps1'
& powershell -NoProfile -ExecutionPolicy Bypass -File $runtimePackager `
    -RepoRoot $repo -ReleaseDir $release
if ($LASTEXITCODE -ne 0) { throw "Core Windows runtime packaging failed ($LASTEXITCODE)" }

if ([string]::IsNullOrWhiteSpace($MihonDownloadCache)) {
    $MihonDownloadCache = Join-Path $repo '.build-cache\mihon-downloads'
}
$mihonBuilder = Join-Path $repo 'tool\mihon\build_desktop_runtime.ps1'
$mihonVerifier = Join-Path $repo 'tool\mihon\verify_desktop_runtime.ps1'
$mihonDir = Join-Path $release 'mihon_bridge'
$mihonArguments = @(
    '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $mihonBuilder,
    '-OutputDirectory', $mihonDir,
    '-DownloadCache', $MihonDownloadCache
)
if ([string]::IsNullOrWhiteSpace($MihonJdkRoot)) {
    $localJdk21 = 'C:\Program Files\Java\jdk-21'
    if (Test-Path -LiteralPath (Join-Path $localJdk21 'bin\jlink.exe') -PathType Leaf) {
        $MihonJdkRoot = $localJdk21
    }
}
if (-not [string]::IsNullOrWhiteSpace($MihonJdkRoot)) {
    $mihonArguments += @('-JdkRoot', $MihonJdkRoot)
}
& $pwsh @mihonArguments
if ($LASTEXITCODE -ne 0) { throw "Mihon runtime build failed ($LASTEXITCODE)" }
& $pwsh -NoProfile -ExecutionPolicy Bypass -File $mihonVerifier `
    -RuntimeDirectory $mihonDir
if ($LASTEXITCODE -ne 0) { throw "Mihon runtime verification failed ($LASTEXITCODE)" }

$magpieBuilder = Join-Path $repo 'tools\build_magpie_slim.ps1'
$dist = Join-Path $repo 'dist'
& $pwsh -NoProfile -ExecutionPolicy Bypass -File $magpieBuilder -OutputDir $dist
if ($LASTEXITCODE -ne 0) { throw "Magpie slim build failed ($LASTEXITCODE)" }
$magpieTarget = Join-Path $release 'magpie_bundle'
New-Item -ItemType Directory -Force -Path $magpieTarget | Out-Null
foreach ($name in @('Magpie-hibiki-slim-x64.zip', 'Magpie-hibiki-slim-x64.zip.sha256')) {
    $source = Join-Path $dist $name
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "Magpie candidate payload is missing: $source"
    }
    Copy-Item -LiteralPath $source -Destination (Join-Path $magpieTarget $name) -Force
}

$verifier = Join-Path $repo 'tool\verify_windows_candidate.ps1'
& powershell -NoProfile -ExecutionPolicy Bypass -File $verifier `
    -RepoRoot $repo -ReleaseDir $release
if ($LASTEXITCODE -ne 0) { throw "Windows candidate verification failed ($LASTEXITCODE)" }

Write-Host "[candidate] Complete Windows candidate is ready: $release\fushi.exe"
$candidateLock.Dispose()
