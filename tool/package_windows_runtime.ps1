[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [Parameter(Mandatory = $true)]
    [string]$ReleaseDir,

    # The smart launcher builds and tests the helper before Flutter so CMake's
    # install step can never encounter a stale distribution. Other callers keep
    # the original self-contained behavior by omitting this switch.
    [switch]$HelperAlreadyBuilt
)

$ErrorActionPreference = 'Stop'

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
if (-not (Test-Path -LiteralPath $ReleaseDir -PathType Container)) {
    throw "Windows Release directory not found: $ReleaseDir"
}
$release = (Resolve-Path -LiteralPath $ReleaseDir).Path

$runtimeUnlockCheck = Join-Path $repo 'tool\check_windows_runtime_unlocked.ps1'
& powershell -NoProfile -ExecutionPolicy Bypass -File $runtimeUnlockCheck `
    -BundleDirectory $release
if ($LASTEXITCODE -ne 0) {
    throw "$runtimeUnlockCheck failed with exit code $LASTEXITCODE"
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

# Flutter resolves Visual Studio's bundled CMake internally, but the helper
# packaging script invokes cmake/ctest by command name in a child PowerShell.
# A normal desktop shell may therefore build the Flutter app successfully and
# still fail before helper compilation.  Add the detected VS CMake bin to PATH
# without pinning a Visual Studio version or edition.
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

# The Flutter build intentionally treats the native galgame helper as optional,
# so a plain local build can succeed while producing an app that cannot start
# capture.  Mirror the release workflow here: build and test both helper
# architectures, then install their verified contents beside the app.  Run the
# scripts in child PowerShell processes so their exit codes are explicit and a
# broken/missing helper stops the launcher before it records a successful build.
function Invoke-CheckedPowerShellScript {
    param(
        [Parameter(Mandatory = $true)]
        [string]$ScriptPath,

        [string[]]$ScriptArguments = @()
    )

    if (-not (Test-Path -LiteralPath $ScriptPath -PathType Leaf)) {
        throw "Required Windows packaging script is missing: $ScriptPath"
    }
    & powershell -NoProfile -ExecutionPolicy Bypass -File $ScriptPath @ScriptArguments
    if ($LASTEXITCODE -ne 0) {
        throw "$ScriptPath failed with exit code $LASTEXITCODE"
    }
}

$helperToolsDir = Join-Path $repo 'native\galgame_hook\tools'
$helperBuildScript = Join-Path $helperToolsDir 'build_distribution.ps1'
$helperInstallScript = Join-Path $helperToolsDir 'install_into_bundle.ps1'
if (-not $HelperAlreadyBuilt) {
    Invoke-CheckedPowerShellScript -ScriptPath $helperBuildScript -ScriptArguments @('-RunTests')
}
Invoke-CheckedPowerShellScript -ScriptPath $helperInstallScript -ScriptArguments @(
    '-BundleDirectory',
    $release
)

# Install the core local runtime subset. A distributable candidate also needs
# Mihon and Magpie plus an independent manifest gate; use
# tool/build_windows_candidate.ps1 for candidate delivery.
$ffmpegSourceDir = Join-Path $repo 'third_party\ffmpeg-min\windows'
foreach ($name in @('ffmpeg.exe', 'ffprobe.exe')) {
    $source = Join-Path $ffmpegSourceDir $name
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "Vendored Windows runtime is missing: $source"
    }
    $target = Join-Path $release $name
    Copy-Item -LiteralPath $source -Destination $target -Force
    Write-Host "[runtime] copied $name"
}

# A Flutter Windows build links the MSVC CRT dynamically.  Copy it when the
# developer machine has the redist installed; machines with a system redist
# can still run, but the warning makes a non-self-contained local bundle
# visible instead of silently hiding it.
$redistRoots = @()
if ($vswhere) {
    $installPath = (& $vswhere -latest -products '*' `
        -requires Microsoft.VisualStudio.Component.VC.Redist.14.Latest `
        -property installationPath 2>$null | Select-Object -First 1)
    if ($installPath) {
        $redistRoots += Join-Path $installPath 'VC\Redist\MSVC'
    }
}
if ($env:ProgramFiles) {
    $redistRoots += Join-Path $env:ProgramFiles 'Microsoft Visual Studio'
}
if (${env:ProgramFiles(x86)}) {
    $redistRoots += Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio'
}

$crtDir = $null
foreach ($root in ($redistRoots | Select-Object -Unique)) {
    if (-not (Test-Path -LiteralPath $root -PathType Container)) {
        continue
    }
    $crtDir = Get-ChildItem -LiteralPath $root -Directory -Recurse -Filter 'Microsoft.VC*.CRT' -ErrorAction SilentlyContinue |
        Where-Object { ($_.FullName -match '[\\/]x64[\\/]') -and (Test-Path -LiteralPath (Join-Path $_.FullName 'msvcp140.dll')) } |
        Sort-Object FullName -Descending |
        Select-Object -First 1
    if ($crtDir) {
        break
    }
}

if ($crtDir) {
    $crtNames = @(
        'msvcp140.dll',
        'vcruntime140.dll',
        'vcruntime140_1.dll',
        'msvcp140_1.dll',
        'msvcp140_2.dll',
        'msvcp140_codecvt_ids.dll',
        'concrt140.dll'
    )
    foreach ($name in $crtNames) {
        $source = Join-Path $crtDir.FullName $name
        if (Test-Path -LiteralPath $source -PathType Leaf) {
            Copy-Item -LiteralPath $source -Destination (Join-Path $release $name) -Force
        }
    }
    Write-Host "[runtime] copied VC++ CRT from $($crtDir.FullName)"
}
else {
    Write-Warning 'VC++ CRT redist was not found; the local bundle may rely on the system redist.'
}

foreach ($name in @('ffmpeg.exe', 'ffprobe.exe')) {
    $target = Join-Path $release $name
    & $target -hide_banner -version *> $null
    if ($LASTEXITCODE -ne 0) {
        throw "Bundled $name failed -version with exit code $LASTEXITCODE"
    }
}
Write-Host '[runtime] Core Windows runtime is ready.'
Write-Host '[runtime] For a distributable candidate, run tool/build_windows_candidate.ps1.'
