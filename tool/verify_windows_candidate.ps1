[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [Parameter(Mandatory = $true)]
    [string]$ReleaseDir
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$release = (Resolve-Path -LiteralPath $ReleaseDir).Path
$releasePrefix = $release.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
$manifestPath = Join-Path $release 'fushi-candidate-manifest.json'
if (Test-Path -LiteralPath $manifestPath) {
    Remove-Item -LiteralPath $manifestPath -Force
}

function Assert-BundleFile {
    param([Parameter(Mandatory = $true)][string]$RelativePath)
    $path = [IO.Path]::GetFullPath((Join-Path $release $RelativePath))
    if (-not $path.StartsWith($releasePrefix, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Candidate path escapes the bundle: $RelativePath"
    }
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "Incomplete Windows candidate: missing $RelativePath"
    }
    if ((Get-Item -LiteralPath $path).Length -le 0) {
        throw "Incomplete Windows candidate: empty $RelativePath"
    }
    return $path
}

$required = @(
    'fushi.exe',
    'fushi_update_launcher.exe',
    'data\app.so',
    'data\icudtl.dat',
    'flutter_windows.dll',
    'libmpv-2.dll',
    'onnxruntime.dll',
    'sqlite3.dll',
    'fushidicts_ffi.dll',
    'ffmpeg.exe',
    'ffprobe.exe',
    'fushi_torrent_ffi.dll',
    'torrent-rasterbar.dll',
    'libssl-3-x64.dll',
    'libcrypto-3-x64.dll',
    'msvcp140.dll',
    'vcruntime140.dll',
    'vcruntime140_1.dll',
    'mihon_bridge\runtime\bin\java.exe',
    'mihon_bridge\m-extension-server.jar',
    'mihon_bridge\checksums.json',
    'mihon_bridge\LICENSE-M-Extension-Server.txt',
    'mihon_bridge\NOTICE-M-Extension-Server.txt',
    'magpie_bundle\Magpie-hibiki-slim-x64.zip',
    'magpie_bundle\Magpie-hibiki-slim-x64.zip.sha256',
    'voice_hook\x86\fushi_voice_injector.exe',
    'voice_hook\x86\fushi_voice_hook.dll',
    'voice_hook\x86\LunaHook32.dll',
    'voice_hook\x86\LunaHost32.dll',
    'voice_hook\x86\LoaderDll.dll',
    'voice_hook\x86\LocaleEmulator.dll',
    'voice_hook\x86\LocaleEmulator-LGPL-3.0.txt',
    'voice_hook\x86\installed.sha256',
    'voice_hook\x64\fushi_voice_injector.exe',
    'voice_hook\x64\fushi_voice_hook.dll',
    'voice_hook\x64\LunaHook64.dll',
    'voice_hook\x64\LunaHost64.dll',
    'voice_hook\x64\unity_audio_runtime\fushi_unity_audio_extract.exe',
    'voice_hook\x64\unity_audio_runtime\classdata.tpk',
    'voice_hook\x64\unity_audio_runtime\vgmstream-cli.exe',
    'voice_hook\x64\unity_audio_runtime\avcodec-vgmstream-59.dll',
    'voice_hook\x64\unity_audio_runtime\avformat-vgmstream-59.dll',
    'voice_hook\x64\unity_audio_runtime\avutil-vgmstream-57.dll',
    'voice_hook\x64\unity_audio_runtime\swresample-vgmstream-4.dll',
    'voice_hook\x64\unity_audio_runtime\libatrac9.dll',
    'voice_hook\x64\unity_audio_runtime\libcelt-0061.dll',
    'voice_hook\x64\unity_audio_runtime\libcelt-0110.dll',
    'voice_hook\x64\unity_audio_runtime\libg719_decode.dll',
    'voice_hook\x64\unity_audio_runtime\libmpg123-0.dll',
    'voice_hook\x64\unity_audio_runtime\libspeex-1.dll',
    'voice_hook\x64\unity_audio_runtime\libvorbis.dll',
    'voice_hook\x64\unity_audio_runtime\COPYING',
    'voice_hook\x64\installed.sha256'
)

$resolvedFiles = [ordered]@{}
foreach ($relative in $required) {
    $path = Assert-BundleFile -RelativePath $relative
    $resolvedFiles[$relative.Replace('\', '/')] = [ordered]@{
        bytes = (Get-Item -LiteralPath $path).Length
        sha256 = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
    }
}

$magpieZip = Assert-BundleFile -RelativePath 'magpie_bundle\Magpie-hibiki-slim-x64.zip'
$magpieSidecar = Assert-BundleFile -RelativePath 'magpie_bundle\Magpie-hibiki-slim-x64.zip.sha256'
$magpieExpected = ((Get-Content -LiteralPath $magpieSidecar -Raw) -replace '[^0-9a-fA-F]', '').ToLowerInvariant()
$magpieActual = (Get-FileHash -LiteralPath $magpieZip -Algorithm SHA256).Hash.ToLowerInvariant()
if ($magpieExpected.Length -ne 64 -or $magpieExpected -ne $magpieActual) {
    throw "Incomplete Windows candidate: Magpie checksum mismatch"
}

foreach ($name in @('ffmpeg.exe', 'ffprobe.exe')) {
    $tool = Assert-BundleFile -RelativePath $name
    & $tool -hide_banner -version *> $null
    if ($LASTEXITCODE -ne 0) {
        throw "Incomplete Windows candidate: $name failed -version ($LASTEXITCODE)"
    }
}

# `-version` only proves the executable starts. Exercise the exact sentence
# audio contract (PCM input -> mono 64k AAC in an ADTS .aac file), so a future
# over-minimized ffmpeg cannot pass the candidate gate and then fail at mining.
$ffmpegSmokeRoot = Join-Path ([IO.Path]::GetTempPath()) (
    'fushi-candidate-ffmpeg-smoke-' + [Guid]::NewGuid().ToString('N'))
[IO.Directory]::CreateDirectory($ffmpegSmokeRoot) | Out-Null
$smokeWav = Join-Path $ffmpegSmokeRoot 'input.wav'
$smokeAac = Join-Path $ffmpegSmokeRoot 'sentence.aac'
try {
    $sampleRate = 8000
    $sampleCount = 800
    $dataLength = $sampleCount * 2
    $stream = [IO.File]::Create($smokeWav)
    $writer = [IO.BinaryWriter]::new($stream)
    try {
        $writer.Write([Text.Encoding]::ASCII.GetBytes('RIFF'))
        $writer.Write([int](36 + $dataLength))
        $writer.Write([Text.Encoding]::ASCII.GetBytes('WAVEfmt '))
        $writer.Write([int]16)
        $writer.Write([int16]1)
        $writer.Write([int16]1)
        $writer.Write([int]$sampleRate)
        $writer.Write([int]($sampleRate * 2))
        $writer.Write([int16]2)
        $writer.Write([int16]16)
        $writer.Write([Text.Encoding]::ASCII.GetBytes('data'))
        $writer.Write([int]$dataLength)
        $writer.Write([byte[]]::new($dataLength))
    }
    finally {
        $writer.Dispose()
    }
    $ffmpeg = Assert-BundleFile -RelativePath 'ffmpeg.exe'
    $ffprobe = Assert-BundleFile -RelativePath 'ffprobe.exe'
    & $ffmpeg -hide_banner -loglevel error -y -i $smokeWav -vn `
        -c:a aac -ac 1 -b:a 64k $smokeAac
    if ($LASTEXITCODE -ne 0 -or
        -not (Test-Path -LiteralPath $smokeAac -PathType Leaf) -or
        (Get-Item -LiteralPath $smokeAac).Length -le 0) {
        throw 'Incomplete Windows candidate: ffmpeg sentence-audio smoke failed'
    }
    & $ffprobe -v error -show_entries format=duration,size -of json $smokeAac *> $null
    if ($LASTEXITCODE -ne 0) {
        throw 'Incomplete Windows candidate: ffprobe rejected sentence-audio smoke output'
    }
}
finally {
    Remove-Item -LiteralPath $ffmpegSmokeRoot -Recurse -Force -ErrorAction SilentlyContinue
}

$mihonVerifier = Join-Path $repo 'tool\mihon\verify_desktop_runtime.ps1'
$pwsh = (Get-Command pwsh.exe -ErrorAction Stop).Source
& $pwsh -NoProfile -ExecutionPolicy Bypass -File $mihonVerifier `
    -RuntimeDirectory (Join-Path $release 'mihon_bridge')
if ($LASTEXITCODE -ne 0) {
    throw "Incomplete Windows candidate: Mihon runtime verification failed ($LASTEXITCODE)"
}

$commit = (& git -C $repo rev-parse HEAD).Trim()
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($commit)) {
    throw 'Cannot resolve candidate source commit.'
}
$sourceStatus = @(& git -C $repo status --porcelain=v1 --untracked-files=all)
if ($LASTEXITCODE -ne 0) {
    throw 'Cannot resolve candidate source status.'
}
$manifest = [ordered]@{
    schemaVersion = 1
    verifiedAtUtc = [DateTime]::UtcNow.ToString('o')
    sourceCommit = $commit
    sourceDirty = $sourceStatus.Count -gt 0
    sourceChanges = $sourceStatus
    files = $resolvedFiles
}
$manifestJson = $manifest | ConvertTo-Json -Depth 5
[IO.File]::WriteAllText($manifestPath, $manifestJson, [Text.UTF8Encoding]::new($false))
Write-Host "[candidate] VERIFIED: $manifestPath"
