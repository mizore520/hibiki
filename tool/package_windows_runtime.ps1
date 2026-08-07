[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [Parameter(Mandatory = $true)]
    [string]$ReleaseDir
)

$ErrorActionPreference = 'Stop'

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
if (-not (Test-Path -LiteralPath $ReleaseDir -PathType Container)) {
    throw "Windows Release directory not found: $ReleaseDir"
}
$release = (Resolve-Path -LiteralPath $ReleaseDir).Path

# Keep local `flutter build windows --release` output equivalent to the CI
# desktop bundle.  The app uses the sibling ffmpeg executable for sentence
# audio encoding; ffprobe is needed by subtitle/tag consumers.
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
Write-Host '[runtime] Windows runtime bundle is ready.'
