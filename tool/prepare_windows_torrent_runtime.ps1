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
        Write-Warning "The common checkout torrent cache belongs to different sources; ignoring it and rebuilding from this worktree."
    }
    else {
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
}

function Get-StringSha256Hex {
    param([Parameter(Mandatory = $true)][string]$Value)

    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
        $bytes = [Text.Encoding]::UTF8.GetBytes($Value)
        $hashBytes = $sha256.ComputeHash($bytes)
        return ([BitConverter]::ToString($hashBytes).Replace('-', '')).ToLowerInvariant()
    }
    finally {
        $sha256.Dispose()
    }
}

function Get-RequiredVcpkgToolTag {
    param([Parameter(Mandatory = $true)][string]$CheckoutRoot)

    $metadataPath = Join-Path $CheckoutRoot 'scripts\vcpkg-tool-metadata.txt'
    if (-not (Test-Path -LiteralPath $metadataPath -PathType Leaf)) {
        throw "Pinned vcpkg checkout has no tool metadata: $metadataPath"
    }
    $releaseLine = Get-Content -LiteralPath $metadataPath -Encoding UTF8 |
        Where-Object { $_ -match '^VCPKG_TOOL_RELEASE_TAG=(.+)$' } |
        Select-Object -First 1
    if (-not $releaseLine -or $releaseLine -notmatch '^VCPKG_TOOL_RELEASE_TAG=(.+)$') {
        throw "Pinned vcpkg checkout has no tool release tag: $metadataPath"
    }
    return $Matches[1].Trim()
}

function Test-VcpkgToolVersion {
    param(
        [Parameter(Mandatory = $true)][string]$Executable,
        [Parameter(Mandatory = $true)][string]$RequiredTag
    )

    if (-not (Test-Path -LiteralPath $Executable -PathType Leaf)) {
        return $false
    }
    $versionOutput = @(& $Executable version --disable-metrics 2>&1) -join "`n"
    return $LASTEXITCODE -eq 0 -and $versionOutput.Contains($RequiredTag)
}

function Install-PinnedVcpkgTool {
    param(
        [Parameter(Mandatory = $true)][string]$RequiredTag,
        [Parameter(Mandatory = $true)][string]$Destination
    )

    $curl = Get-Command curl.exe -ErrorAction SilentlyContinue
    if (-not $curl) {
        throw 'curl.exe is required to download the pinned vcpkg tool'
    }
    $downloadUrl = "https://github.com/microsoft/vcpkg-tool/releases/download/$RequiredTag/vcpkg.exe"
    # Keep the temporary file executable so Windows PowerShell can actually
    # invoke it for the version gate before installation.
    $partial = "$Destination.download.exe"
    if (Test-Path -LiteralPath $partial) {
        Remove-Item -LiteralPath $partial -Force
    }
    Write-Host "[torrent] downloading pinned vcpkg tool $RequiredTag..."
    & $curl.Source --fail --location --silent --show-error `
        --connect-timeout 20 --max-time 180 `
        --output $partial $downloadUrl
    if ($LASTEXITCODE -ne 0) {
        throw "Pinned vcpkg tool download failed with exit code $LASTEXITCODE"
    }
    if (-not (Test-VcpkgToolVersion -Executable $partial -RequiredTag $RequiredTag)) {
        throw "Downloaded vcpkg tool does not report required version $RequiredTag"
    }
    Move-Item -LiteralPath $partial -Destination $Destination -Force
    if (-not (Test-VcpkgToolVersion -Executable $Destination -RequiredTag $RequiredTag)) {
        throw "Installed vcpkg tool does not report required version $RequiredTag"
    }
    Write-Host "[torrent] pinned vcpkg tool ready: $RequiredTag"
}

if (-not (Test-CompleteRuntime -Directory $targetDirectory)) {
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:FUSHI_VCPKG_ROOT }
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:VCPKG_ROOT }
    if (-not $VcpkgRoot) { $VcpkgRoot = $env:VCPKG_INSTALLATION_ROOT }

    # CMake is bundled with Visual Studio even when it is not on PATH.
    $vsInstall = $null
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (Test-Path -LiteralPath $vswhere -PathType Leaf) {
        $vsInstall = (& $vswhere -latest -products * -property installationPath |
            Select-Object -First 1)
    }
    # VS 2026 ships a vcpkg executable snapshot without .git/ports/versions;
    # this project's builtin-baseline contract cannot be proved from it. Keep
    # a shallow, baseline-pinned checkout in the repository build cache instead.
    if (-not $VcpkgRoot) {
        $torrentManifest = Get-Content -LiteralPath (Join-Path $repo 'native\fushi_torrent\vcpkg.json') -Raw -Encoding UTF8 |
            ConvertFrom-Json
        $baseline = $torrentManifest.'builtin-baseline'
        if ([string]::IsNullOrWhiteSpace($baseline)) {
            throw 'Torrent vcpkg manifest has no builtin-baseline'
        }
        # Keep native dependency paths short. Autotools/libtool still reaches
        # legacy MAX_PATH behavior when it combines a long worktree path with
        # vcpkg's package DESTDIR (BUG-1772).
        $VcpkgRoot = Join-Path $commonCheckout ".build-cache\vcpkg\$baseline"
        if (-not (Test-Path -LiteralPath (Join-Path $VcpkgRoot '.git'))) {
            if (Test-Path -LiteralPath $VcpkgRoot) {
                throw "Incomplete vcpkg cache is not a Git checkout: $VcpkgRoot"
            }
            New-Item -ItemType Directory -Force -Path $VcpkgRoot | Out-Null
            Write-Host "[torrent] creating pinned vcpkg cache: $VcpkgRoot"
            & git -C $VcpkgRoot init
            if ($LASTEXITCODE -ne 0) { throw 'vcpkg cache git init failed' }
            & git -C $VcpkgRoot remote add origin https://github.com/microsoft/vcpkg.git
            if ($LASTEXITCODE -ne 0) { throw 'vcpkg cache remote setup failed' }
            & git -C $VcpkgRoot fetch --depth 1 origin $baseline
            if ($LASTEXITCODE -ne 0) { throw "vcpkg baseline fetch failed: $baseline" }
            & git -C $VcpkgRoot checkout --detach FETCH_HEAD
            if ($LASTEXITCODE -ne 0) { throw "vcpkg baseline checkout failed: $baseline" }
        }
        $requiredToolTag = Get-RequiredVcpkgToolTag -CheckoutRoot $VcpkgRoot
        $vcpkgExe = Join-Path $VcpkgRoot 'vcpkg.exe'
        if (-not (Test-VcpkgToolVersion -Executable $vcpkgExe -RequiredTag $requiredToolTag)) {
            Install-PinnedVcpkgTool `
                -RequiredTag $requiredToolTag `
                -Destination $vcpkgExe
        }
        Write-Host "[torrent] using pinned vcpkg cache: $VcpkgRoot"
    }

    if (-not (Get-Command cmake -ErrorAction SilentlyContinue) -and $vsInstall) {
        $visualStudioCmakeBin = Join-Path $vsInstall 'Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin'
        if (Test-Path -LiteralPath (Join-Path $visualStudioCmakeBin 'cmake.exe')) {
            $env:PATH = "$visualStudioCmakeBin;$env:PATH"
            Write-Host "[torrent] using Visual Studio CMake: $visualStudioCmakeBin"
        }
    }

    $builder = Join-Path $repo "native\fushi_torrent\build_windows_dll.ps1"
    $repoKey = (Get-StringSha256Hex -Value $repo).Substring(0, 12)
    $torrentBuildDirectory = Join-Path $commonCheckout ".build-cache\fushi_torrent\$repoKey"
    Write-Host "[torrent] using short build directory: $torrentBuildDirectory"
    & $builder -VcpkgRoot $VcpkgRoot -BuildDirectory $torrentBuildDirectory
    if ($LASTEXITCODE -ne 0) {
        throw "Torrent runtime build failed with exit code $LASTEXITCODE"
    }
}

if (-not (Test-CompleteRuntime -Directory $targetDirectory)) {
    throw "Torrent runtime preparation completed without all required DLLs: $targetDirectory"
}

Write-Host "[torrent] runtime ready: $targetDirectory"
