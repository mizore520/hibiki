<#
.SYNOPSIS
  Fail before a Windows rebuild if the current app/helper binaries are locked.

.DESCRIPTION
  Fushi and the galgame injector/DLLs are replaced in place during a local
  build. Windows refuses that replacement while an executable is running or a
  hook DLL is still loaded in a game. This script is intentionally read-only:
  it never kills a process and tells the user to stop capture/exit the game.
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $BundleDirectory
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$bundle = [IO.Path]::GetFullPath($BundleDirectory)
if (-not (Test-Path -LiteralPath $bundle -PathType Container)) {
  exit 0
}

$candidates = @()
$app = Join-Path $bundle 'fushi.exe'
if (Test-Path -LiteralPath $app -PathType Leaf) {
  $candidates += Get-Item -LiteralPath $app
}
$hookRoot = Join-Path $bundle 'voice_hook'
if (Test-Path -LiteralPath $hookRoot -PathType Container) {
  $candidates += Get-ChildItem -LiteralPath $hookRoot -File -Recurse |
    Where-Object { $_.Extension -in @('.exe', '.dll') }
}

$locked = @()
foreach ($file in $candidates) {
  $stream = $null
  try {
    $stream = [IO.File]::Open(
      $file.FullName,
      [IO.FileMode]::Open,
      [IO.FileAccess]::ReadWrite,
      [IO.FileShare]::None)
  }
  catch [IO.IOException] {
    $locked += $file.FullName
  }
  catch [UnauthorizedAccessException] {
    $locked += $file.FullName
  }
  finally {
    if ($null -ne $stream) {
      $stream.Dispose()
    }
  }
}

if ($locked.Count -gt 0) {
  $list = ($locked | ForEach-Object { "  - $_" }) -join [Environment]::NewLine
  $message = @(
    'Windows runtime files are still in use. The build stopped before changing them:'
    $list
    'Stop capture and exit Fushi. If a game still has a Hook DLL loaded, exit that game, then run the launcher again.'
  ) -join [Environment]::NewLine
  throw $message
}

Write-Host '[preflight] Windows app/helper files are replaceable.'
