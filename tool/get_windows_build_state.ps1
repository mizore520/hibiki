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

function Test-IsBuildInputPath {
  param([Parameter(Mandatory = $true)][string] $RelativePath)

  $normalized = ($RelativePath -replace '\\', '/')
  while ($normalized.StartsWith('./', [StringComparison]::Ordinal)) {
    $normalized = $normalized.Substring(2)
  }
  $normalized = $normalized.TrimStart('/')
  if ([string]::IsNullOrWhiteSpace($normalized)) {
    return $false
  }

  # The launcher fingerprint must describe inputs to the Windows bundle, not
  # repository bookkeeping. In particular, bug-index regeneration used to
  # make an unchanged EXE look stale because docs/BUGS.md and a new
  # docs/bugs/*.md were included in the all-worktree diff. Keep this exclusion
  # path-based and conservative: application/native/package/tool sources still
  # participate in the fingerprint, including untracked files.
  if ($normalized -match '^(?:docs/|\.codex-test/|\.worktrees/|\.github/)') {
    return $false
  }
  # Codex scratch directories/scripts and loose compiler objects are local
  # diagnostics, not Windows bundle inputs. They are intentionally not
  # deleted or added to .gitignore here: excluding them at the fingerprint
  # boundary keeps an existing user's files visible while preventing a probe
  # or a temporary CMake backup from forcing a full app rebuild.
  if ($normalized -match '(^|/)\.codex(?:-|/)') {
    return $false
  }
  if ($normalized -match '\.obj$') {
    return $false
  }
  if ($normalized -eq 'native/galgame_hook/tools/little_busters_memory_probe.cpp') {
    return $false
  }
  if ($normalized -match '^(?:fushi/(?:test|integration_test)/|(?:test|integration_test)/|packages/[^/]+/test/|native(?:/[^/]+)*/tests/)') {
    return $false
  }
  if ($normalized -match '^(?:fushi/docs/|packages/[^/]+/docs/|native(?:/[^/]+)*/docs/)') {
    return $false
  }
  if ($normalized -match '^(?:启动Hibiki最新版\.bat|tool/get_windows_build_state\.ps1)$') {
    return $false
  }
  if ($normalized -match '(^|/)(?:AGENTS|CLAUDE)(?:\.local)?\.md$') {
    return $false
  }
  return $true
}

$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$head = (Invoke-GitText 'rev-parse' '--verify' 'HEAD').Trim()
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
