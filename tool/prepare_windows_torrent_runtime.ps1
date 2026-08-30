[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [string]$VcpkgRoot
)

$ErrorActionPreference = "Stop"

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$relativeRuntime = "native\fushi_torrent\prebuilt\windows-x64"
$targetDirectory = Join-Path $repo $relativeRuntime
$requiredDlls = @(
    "fushi_torrent_ffi.dll",
    "torrent-rasterbar.dll",
    "libssl-3-x64.dll",
    "libcrypto-3-x64.dll"
)

function Get-Sha256Hex {
    param([Parameter(Mandatory = $true)][string]$Path)

    # BUG-1601: Get-FileHash is module-backed and can disappear after the
    # launcher normalizes PATH/PSModulePath for MSBuild. Use framework crypto,
    # which is available in both Windows PowerShell 5.1 and PowerShell 7.
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

function Test-CompleteRuntime {
    param([Parameter(Mandatory = $true)][string]$Directory)

    foreach ($dll in $requiredDlls) {
        $path = Join-Path $Directory $dll
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
            return $false
        }
        if ((Get-Item -LiteralPath $path).Length -le 0) {
            return $false
        }
    }
    return $true
}

function Get-TorrentSourceManifest {
    param([Parameter(Mandatory = $true)][string]$CheckoutRoot)

    $tracked = @(& git -C $CheckoutRoot ls-files -- native/fushi_torrent)
    if ($LASTEXITCODE -ne 0) {
        throw "Cannot list tracked torrent sources in: $CheckoutRoot"
    }
    $untracked = @(& git -C $CheckoutRoot ls-files --others --exclude-standard -- native/fushi_torrent)
    if ($LASTEXITCODE -ne 0) {
        throw "Cannot list untracked torrent sources in: $CheckoutRoot"
    }

    $files = @($tracked + $untracked) |
        Where-Object {
            $_ -and
            $_ -notmatch '^native/fushi_torrent/(build|prebuilt)/'
        } |
        Sort-Object -Unique

    $manifest = foreach ($relativePath in $files) {
        $nativeRelativePath = $relativePath.Replace('/', [IO.Path]::DirectorySeparatorChar)
        $fullPath = Join-Path $CheckoutRoot $nativeRelativePath
        if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
            "MISSING $relativePath"
            continue
        }
        $hash = Get-Sha256Hex -Path $fullPath
        "$hash $relativePath"
    }
    return @($manifest)
}

function Test-SameTorrentSources {
    param(
        [Parameter(Mandatory = $true)][string]$LeftRoot,
        [Parameter(Mandatory = $true)][string]$RightRoot
    )

    $left = @(Get-TorrentSourceManifest -CheckoutRoot $LeftRoot)
    $right = @(Get-TorrentSourceManifest -CheckoutRoot $RightRoot)
    if ($left.Count -ne $right.Count) {
        return $false
    }
    return $null -eq (Compare-Object -ReferenceObject $left -DifferenceObject $right)
}

if (Test-CompleteRuntime -Directory $targetDirectory) {
    Write-Host "[torrent] runtime ready: $targetDirectory"
    exit 0
}

$gitCommonDirectory = (& git -C $repo rev-parse --path-format=absolute --git-common-dir).Trim()
if ($LASTEXITCODE -ne 0 -or -not $gitCommonDirectory) {
    throw "Cannot resolve the Git common directory for: $repo"
}
$commonCheckout = Split-Path -Parent $gitCommonDirectory
$seedDirectory = Join-Path $commonCheckout $relativeRuntime

if (
    -not [IO.Path]::GetFullPath($seedDirectory).Equals(
        [IO.Path]::GetFullPath($targetDirectory),
        [StringComparison]::OrdinalIgnoreCase
    ) -and
    (Test-CompleteRuntime -Directory $seedDirectory)
) {
    if (-not (Test-SameTorrentSources -LeftRoot $repo -RightRoot $commonCheckout)) {
        throw "The common checkout has cached torrent DLLs, but its torrent sources differ. Refusing to reuse stale native binaries."
    }

    New-Item -ItemType Directory -Force -Path $targetDirectory | Out-Null
    foreach ($dll in $requiredDlls) {
        $source = Join-Path $seedDirectory $dll
        $destination = Join-Path $targetDirectory $dll
        Copy-Item -LiteralPath $source -Destination $destination -Force
        $sourceHash = Get-Sha256Hex -Path $source
        $destinationHash = Get-Sha256Hex -Path $destination
        if ($sourceHash -ne $destinationHash) {
            throw "Torrent runtime cache verification failed after copying: $dll"
        }
        Write-Host "[torrent] seeded same-source cache: $dll"
    }
}

if (-not (Test-CompleteRuntime -Directory $targetDirectory)) {
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:FUSHI_VCPKG_ROOT }
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:VCPKG_ROOT }
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:VCPKG_INSTALLATION_ROOT }

    if (-not $VcpkgRoot) {
        throw "Torrent runtime is missing and no same-source cache is available. Set FUSHI_VCPKG_ROOT to a vcpkg checkout, then run this launcher again."
    }

    $builder = Join-Path $repo "native\fushi_torrent\build_windows_dll.ps1"
    & $builder -VcpkgRoot $VcpkgRoot
    if ($LASTEXITCODE -ne 0) {
        throw "Torrent runtime build failed with exit code $LASTEXITCODE"
    }
}

if (-not (Test-CompleteRuntime -Directory $targetDirectory)) {
    throw "Torrent runtime preparation completed without all required DLLs: $targetDirectory"
}

Write-Host "[torrent] runtime ready: $targetDirectory"
