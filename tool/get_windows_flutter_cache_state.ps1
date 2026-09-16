<#
.SYNOPSIS
  Compute the state that makes Flutter's incremental Windows cache reusable.

.DESCRIPTION
  The smart launcher uses this marker to distinguish an ordinary Dart/native
  edit from a branch, dependency, or Flutter SDK change. Flutter's own build
  system tracks source edits incrementally; the launcher only has to discard
  the cache when the surrounding build identity changed. This keeps a normal
  source build from recompiling the whole Dart AOT graph.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot,

  [Parameter(Mandatory = $true)]
  [string] $FlutterExecutable
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function Get-FileSha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  $stream = [IO.File]::OpenRead($Path)
  try {
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try {
      return (($sha256.ComputeHash($stream) |
        ForEach-Object { $_.ToString('x2') }) -join '')
    }
    finally { $sha256.Dispose() }
  }
  finally { $stream.Dispose() }
}

function Add-RelativeFile {
  param(
    [Parameter(Mandatory = $true)]
    [AllowEmptyCollection()]
    [System.Collections.Generic.List[string]] $Files,
    [Parameter(Mandatory = $true)]
    [string] $RelativePath
  )

  $normalized = $RelativePath.Replace('\', '/')
  if (-not $Files.Contains($normalized)) {
    [void] $Files.Add($normalized)
  }
}

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$rootPrefix = $repo.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
$files = [System.Collections.Generic.List[string]]::new()

foreach ($relative in @(
    'pubspec.yaml',
    'pubspec.lock',
    'tool/bootstrap.ps1',
    'ci/apply-patches.sh'
  )) {
  $path = Join-Path $repo ($relative -replace '/', '\')
  if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
    throw "Flutter cache-state input is missing: $path"
  }
  Add-RelativeFile -Files $files -RelativePath $relative
}

# A workspace member's pubspec can change the generated package graph even if
# the root lockfile has not yet been regenerated. Include every manifest under
# packages/ and third_party/; example projects are harmless extra invalidation.
foreach ($directoryName in @('packages', 'third_party')) {
  $directory = Join-Path $repo $directoryName
  if (-not (Test-Path -LiteralPath $directory -PathType Container)) {
    continue
  }
  foreach ($file in Get-ChildItem -LiteralPath $directory -File -Recurse -Filter 'pubspec.yaml') {
    $full = [IO.Path]::GetFullPath($file.FullName)
    if (-not $full.StartsWith($rootPrefix, [StringComparison]::OrdinalIgnoreCase)) {
      throw "Flutter cache-state input escapes repository: $full"
    }
    Add-RelativeFile -Files $files -RelativePath $full.Substring($rootPrefix.Length)
  }
}

$patchDirectory = Join-Path $repo 'ci\patches'
if (Test-Path -LiteralPath $patchDirectory -PathType Container) {
  foreach ($file in Get-ChildItem -LiteralPath $patchDirectory -File -Recurse) {
    $full = [IO.Path]::GetFullPath($file.FullName)
    if (-not $full.StartsWith($rootPrefix, [StringComparison]::OrdinalIgnoreCase)) {
      throw "Flutter cache-state input escapes repository: $full"
    }
    Add-RelativeFile -Files $files -RelativePath $full.Substring($rootPrefix.Length)
  }
}

# Branch identity catches the stale-cache case caused by switching worktrees or
# branches while preserving Flutter's incremental cache for edits on the same
# branch. The commit id also invalidates the cache after a merge/checkout.
# Detached HEADs use the same commit id, so they cannot accidentally share a
# cache with an unrelated detached checkout.
$branch = & git -C $repo symbolic-ref --quiet --short HEAD 2>$null
$branchExitCode = $LASTEXITCODE
if ($branchExitCode -eq 0 -and -not [string]::IsNullOrWhiteSpace($branch)) {
  $branchIdentity = "branch:$($branch.Trim())"
}
else {
  $head = & git -C $repo rev-parse --verify HEAD 2>$null
  $headExitCode = $LASTEXITCODE
  if ($headExitCode -ne 0 -or [string]::IsNullOrWhiteSpace($head)) {
    throw 'Could not determine the current Git identity for the Flutter cache'
  }
  $branchIdentity = "detached:$($head.Trim())"
}

$head = & git -C $repo rev-parse --verify HEAD 2>$null
$headExitCode = $LASTEXITCODE
if ($headExitCode -ne 0 -or [string]::IsNullOrWhiteSpace($head)) {
  throw 'Could not determine the current commit for the Flutter cache'
}

$flutterPath = [IO.Path]::GetFullPath($FlutterExecutable)
$manifest = [Text.StringBuilder]::new()
[void] $manifest.Append('format')
[void] $manifest.Append([char]0)
[void] $manifest.Append('flutter-cache-v1')
[void] $manifest.Append([Environment]::NewLine)
[void] $manifest.Append('identity')
[void] $manifest.Append([char]0)
[void] $manifest.Append($branchIdentity)
[void] $manifest.Append([Environment]::NewLine)
[void] $manifest.Append('head')
[void] $manifest.Append([char]0)
[void] $manifest.Append($head.Trim())
[void] $manifest.Append([Environment]::NewLine)
[void] $manifest.Append('flutter')
[void] $manifest.Append([char]0)
[void] $manifest.Append($flutterPath)
[void] $manifest.Append([Environment]::NewLine)

$flutterBinDirectory = Split-Path -Parent $flutterPath
$flutterRoot = Split-Path -Parent $flutterBinDirectory
$flutterVersionFile = Join-Path $flutterRoot 'version'
if (Test-Path -LiteralPath $flutterVersionFile -PathType Leaf) {
  [void] $manifest.Append('flutter-version')
  [void] $manifest.Append([char]0)
  [void] $manifest.Append((Get-FileSha256Hex -Path $flutterVersionFile))
  [void] $manifest.Append([Environment]::NewLine)
}

$orderedFiles = $files.ToArray()
[Array]::Sort($orderedFiles, [StringComparer]::Ordinal)
foreach ($relative in $orderedFiles) {
  $path = Join-Path $repo ($relative -replace '/', '\')
  [void] $manifest.Append($relative)
  [void] $manifest.Append([char]0)
  [void] $manifest.Append((Get-FileSha256Hex -Path $path))
  [void] $manifest.Append([Environment]::NewLine)
}

$bytes = [Text.Encoding]::UTF8.GetBytes($manifest.ToString())
$sha256 = [Security.Cryptography.SHA256]::Create()
try {
  (($sha256.ComputeHash($bytes) |
    ForEach-Object { $_.ToString('x2') }) -join '')
}
finally { $sha256.Dispose() }
