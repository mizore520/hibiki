[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $RepoRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

# Git emits literal path names as UTF-8. Windows PowerShell otherwise decodes
# them with the console's legacy code page when launched from cmd.exe.
[Console]::OutputEncoding = [Text.UTF8Encoding]::new($false)

. (Join-Path $PSScriptRoot 'windows_build_inputs.ps1')

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

function Get-StringSha256Hex {
  param([Parameter(Mandatory = $true)][AllowEmptyString()][string] $Text)

  $bytes = [Text.Encoding]::UTF8.GetBytes($Text)
  $hasher = [Security.Cryptography.SHA256]::Create()
  try {
    return (($hasher.ComputeHash($bytes) |
      ForEach-Object { $_.ToString('x2') }) -join '')
  }
  finally { $hasher.Dispose() }
}

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path

# Identify the committed sources by the content of their build inputs, not by
# the commit id. A docs-only commit therefore keeps the stamp, and two
# checkouts of identical sources (a verified candidate and the merge that
# adopts it) produce the same state, which lets the launcher reuse a bundle
# instead of compiling the same code twice.
$treeText = Invoke-GitText '-c' 'core.quotePath=false' 'ls-tree' '-r' '--full-tree' 'HEAD'
$treeEntries = [Collections.Generic.List[string]]::new()
foreach ($line in ($treeText -split "`n")) {
  $entry = $line.TrimEnd("`r")
  $tab = $entry.IndexOf("`t")
  if ($tab -lt 0) { continue }
  if (Test-IsBuildInputPath -RelativePath $entry.Substring($tab + 1)) {
    $treeEntries.Add($entry)
  }
}
$treeDigest = Get-StringSha256Hex -Text ($treeEntries -join "`n")

# Keep non-ASCII path names literal. Git's default octal quoting (for example
# the Chinese launcher filename) would otherwise be fed back as a literal
# path argument below and can become an invalid Windows path such as /345.
$trackedPathText = Invoke-GitText '-c' 'core.quotePath=false' 'diff' '--name-only' 'HEAD' '--' '.'
$trackedPaths = @(
  $trackedPathText -split "`n" |
    ForEach-Object { $_.TrimEnd("`r") } |
    Where-Object {
      -not [string]::IsNullOrWhiteSpace($_) -and
        (Test-IsBuildInputPath -RelativePath $_)
    }
)
$trackedPatch = ''
if ($trackedPaths.Count -gt 0) {
  $diffArguments = @('diff', '--binary', 'HEAD', '--') + $trackedPaths
  $trackedPatch = Invoke-GitText @diffArguments
}
# Untracked paths need the same literal non-ASCII names as tracked paths.
$untrackedText = Invoke-GitText '-c' 'core.quotePath=false' 'ls-files' '--others' '--exclude-standard'
$untracked = @(
  $untrackedText -split "`n" |
    ForEach-Object { $_.TrimEnd("`r") } |
    Where-Object {
      -not [string]::IsNullOrWhiteSpace($_) -and
        (Test-IsBuildInputPath -RelativePath $_)
    }
)
[Array]::Sort($untracked, [StringComparer]::Ordinal)

$manifest = [Text.StringBuilder]::new()
[void] $manifest.Append("format`0build-state-v2`n")
[void] $manifest.Append("tree`0$treeDigest`n")
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

Get-StringSha256Hex -Text $manifest.ToString()
