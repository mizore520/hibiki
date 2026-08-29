[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function Invoke-GitText {
  param([Parameter(ValueFromRemainingArguments = $true)][string[]] $Arguments)

  $output = & git -C $RepoRoot @Arguments
  if ($LASTEXITCODE -ne 0) {
    throw "git $($Arguments -join ' ') failed with exit code $LASTEXITCODE"
  }
  return ($output -join "`n")
}

function Get-FileSha256Hex {
  param([Parameter(Mandatory = $true)][string] $Path)

  $stream = [IO.File]::OpenRead($Path)
  try {
    $hasher = [Security.Cryptography.SHA256]::Create()
    try {
      return (($hasher.ComputeHash($stream) |
        ForEach-Object { $_.ToString('x2') }) -join '')
    }
    finally { $hasher.Dispose() }
  }
  finally { $stream.Dispose() }
}

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$head = (Invoke-GitText 'rev-parse' '--verify' 'HEAD').Trim()
$trackedPatch = Invoke-GitText 'diff' '--binary' 'HEAD' '--' '.'
$untrackedText = Invoke-GitText 'ls-files' '--others' '--exclude-standard'
$untracked = @(
  $untrackedText -split "`n" |
    ForEach-Object { $_.TrimEnd("`r") } |
    Where-Object { -not [string]::IsNullOrWhiteSpace($_) }
)
[Array]::Sort($untracked, [StringComparer]::Ordinal)

$manifest = [Text.StringBuilder]::new()
[void] $manifest.Append("head`0$head`n")
[void] $manifest.Append("tracked`0$trackedPatch`n")
foreach ($relative in $untracked) {
  $full = [IO.Path]::GetFullPath((Join-Path $repo ($relative -replace '/', '\')))
  $prefix = $repo.TrimEnd('\', '/') + [IO.Path]::DirectorySeparatorChar
  if (-not $full.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase) -or
      -not (Test-Path -LiteralPath $full -PathType Leaf)) {
    throw "Untracked build input is missing or escapes the repository: $relative"
  }
  [void] $manifest.Append("untracked`0$relative`0")
  [void] $manifest.Append((Get-FileSha256Hex -Path $full))
  [void] $manifest.Append("`n")
}

$bytes = [Text.Encoding]::UTF8.GetBytes($manifest.ToString())
$sha256 = [Security.Cryptography.SHA256]::Create()
try {
  (($sha256.ComputeHash($bytes) |
    ForEach-Object { $_.ToString('x2') }) -join '')
}
finally { $sha256.Dispose() }
