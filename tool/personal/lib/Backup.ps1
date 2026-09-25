# flow.ps1 backup：数据库迁移前备份 Fushi 的数据库与设置，只保留最近 2 份。
# 由 flow.ps1 dot-source；依赖 Common.ps1。
#
# 数据位置与应用一致（fushi/lib/src/storage/app_paths.dart）：
#   SharedPreferences 固定在 %APPDATA%\Fushi\Fushi\shared_preferences.json；
#   其中 flutter.data_root 有值时数据库在 <data_root>\support，否则在 %APPDATA%\Fushi\Fushi。
# 只备份数据库（含 -wal/-shm）和设置；词典/音频资源库、OCR 模型、校准样本等
# 不受 schema 迁移影响且体积大，不在此备份。

Add-Type -AssemblyName System.IO.Compression.FileSystem

$script:BackupKeepCount = 2
$script:BackupDatabaseNames = @('fushi.db', 'hibiki.db')
$script:BackupDatabaseSuffixes = @('', '-wal', '-shm')
$script:FushiProcessNames = @('fushi', 'Fushi')

function Get-FlowBackupRoot {
    [OutputType([string])]
    param([string]$Override)
    if ($Override) { return $Override }
    return (Join-Path $env:LOCALAPPDATA 'FushiBackups')
}

function Get-FlowBackups {
    [OutputType([System.IO.FileInfo[]])]
    param([string]$BackupRoot)
    if (-not (Test-Path -LiteralPath $BackupRoot)) { return @() }
    return @(Get-ChildItem -LiteralPath $BackupRoot -File -Filter 'fushi-data-*.zip' | Sort-Object Name -Descending)
}

# 返回 { SupportRoot, PrefsFile, Source }。-DataRoot 覆盖用于测试：<DataRoot>\support 与
# <DataRoot>\shared_preferences.json。
function Resolve-FlowDataPaths {
    [OutputType([pscustomobject])]
    param([string]$DataRootOverride)
    if ($DataRootOverride) {
        return [pscustomobject]@{
            SupportRoot = Join-Path $DataRootOverride 'support'
            PrefsFile   = Join-Path $DataRootOverride 'shared_preferences.json'
            Source      = "指定的数据根 $DataRootOverride"
        }
    }
    $defaultSupport = Join-Path $env:APPDATA 'Fushi\Fushi'
    $prefs = Join-Path $defaultSupport 'shared_preferences.json'
    $support = $defaultSupport
    $source = "默认位置 $defaultSupport"
    if (Test-Path -LiteralPath $prefs) {
        $json = Get-Content -LiteralPath $prefs -Raw | ConvertFrom-Json
        if ($json.PSObject.Properties['flutter.data_root'] -and "$($json.'flutter.data_root')".Trim()) {
            $dataRoot = "$($json.'flutter.data_root')".Trim()
            $support = Join-Path $dataRoot 'support'
            $source = "自定义数据根 $dataRoot（来自 flutter.data_root）"
        }
    }
    return [pscustomobject]@{ SupportRoot = $support; PrefsFile = $prefs; Source = $source }
}

function Get-FlowFileSha256 {
    [OutputType([string])]
    param([string]$Path)
    return (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
}

function New-FlowBackup {
    [OutputType([void])]
    param(
        [pscustomobject]$Context,
        [string]$Reason,
        [string]$DataRootOverride,
        [string]$BackupRootOverride
    )
    if (-not $DataRootOverride) {
        $running = @(Get-Process -Name $script:FushiProcessNames -ErrorAction SilentlyContinue)
        if ($running.Count -gt 0) {
            throw 'Fushi 正在运行（数据库可能正在写入）。请用户先关闭 Fushi，再重新运行 backup。'
        }
    }
    $paths = Resolve-FlowDataPaths $DataRootOverride
    $sources = [System.Collections.Generic.List[pscustomobject]]::new()
    foreach ($db in $script:BackupDatabaseNames) {
        foreach ($suffix in $script:BackupDatabaseSuffixes) {
            $file = Join-Path $paths.SupportRoot "$db$suffix"
            if (Test-Path -LiteralPath $file) { $sources.Add([pscustomobject]@{ Path = $file; Entry = "support/$db$suffix" }) }
        }
    }
    if (-not ($sources | Where-Object { $_.Entry -match '\.db$' })) {
        throw "在 $($paths.SupportRoot) 没找到 fushi.db / hibiki.db（数据位置来源：$($paths.Source)）。不要猜测位置，先和用户确认数据在哪。"
    }
    if (Test-Path -LiteralPath $paths.PrefsFile) {
        $sources.Add([pscustomobject]@{ Path = $paths.PrefsFile; Entry = 'shared_preferences.json' })
    }

    $backupRoot = Get-FlowBackupRoot $BackupRootOverride
    [void](New-Item -ItemType Directory -Force -Path $backupRoot)
    $customSha = Get-FlowRefSha $Context 'refs/heads/custom'
    $shortSha = if ($customSha) { $customSha.Substring(0, 10) } else { 'nocustom' }
    $name = "fushi-data-$(Get-Date -Format 'yyyyMMdd-HHmmss')-$shortSha"
    $staging = Join-Path $backupRoot "$name.partial"
    $zip = Join-Path $backupRoot "$name.zip"
    [void](New-Item -ItemType Directory -Force -Path $staging)
    try {
        $manifestFiles = foreach ($item in $sources) {
            $target = Join-Path $staging ($item.Entry -replace '/', '\')
            [void](New-Item -ItemType Directory -Force -Path (Split-Path $target -Parent))
            Copy-Item -LiteralPath $item.Path -Destination $target
            [ordered]@{ entry = $item.Entry; source = $item.Path; bytes = (Get-Item -LiteralPath $target).Length; sha256 = Get-FlowFileSha256 $target }
        }
        $manifest = [ordered]@{
            createdAt  = (Get-Date).ToString('s')
            reason     = $Reason
            customSha  = $customSha
            dataSource = $paths.Source
            files      = @($manifestFiles)
            restore    = '先关闭 Fushi；把 support/ 下的文件复制回 dataSource 对应的 support 目录，shared_preferences.json 复制回 %APPDATA%\Fushi\Fushi\。复制前先把现有文件改名留底。'
        }
        Save-FlowJson -Path (Join-Path $staging 'manifest.json') -Data $manifest
        [System.IO.Compression.ZipFile]::CreateFromDirectory($staging, $zip, [System.IO.Compression.CompressionLevel]::Optimal, $false)
        $archive = [System.IO.Compression.ZipFile]::OpenRead($zip)
        try { $entryCount = $archive.Entries.Count } finally { $archive.Dispose() }
        if ($entryCount -lt $sources.Count + 1) { throw "备份压缩包条目数不对（$entryCount）：$zip" }
    }
    finally {
        Remove-Item -LiteralPath $staging -Recurse -Force -ErrorAction SilentlyContinue
    }

    $size = (Get-Item -LiteralPath $zip).Length
    Write-Output ("已备份 {0} 个文件到 {1}（{2:N1}MB）。数据位置：{3}" -f $sources.Count, $zip, ($size / 1MB), $paths.Source)
    $old = @(Get-FlowBackups $backupRoot | Select-Object -Skip $script:BackupKeepCount)
    foreach ($file in $old) {
        Remove-Item -LiteralPath $file.FullName -Force
        Write-Output "按保留策略删除旧备份：$($file.Name)"
    }
}

function Show-FlowBackups {
    [OutputType([void])]
    param([string]$BackupRootOverride)
    $root = Get-FlowBackupRoot $BackupRootOverride
    $backups = @(Get-FlowBackups $root)
    Write-Output "备份目录：$root（保留最近 $script:BackupKeepCount 份）"
    if ($backups.Count -eq 0) { Write-Output '（无）'; return }
    foreach ($file in $backups) {
        $reason = ''
        $archive = [System.IO.Compression.ZipFile]::OpenRead($file.FullName)
        try {
            $entry = $archive.GetEntry('manifest.json')
            if ($entry) {
                $reader = [System.IO.StreamReader]::new($entry.Open())
                try { $reason = ($reader.ReadToEnd() | ConvertFrom-Json).reason } finally { $reader.Dispose() }
            }
        }
        finally { $archive.Dispose() }
        Write-Output ("{0}  {1:N1}MB  {2}" -f $file.Name, ($file.Length / 1MB), $reason)
    }
}
