# Shared definition of which repository paths are inputs to the Windows
# bundle. Dot-sourced by get_windows_build_state.ps1 (fingerprint) and
# resolve_windows_build_root.ps1 (dirty-candidate check) so both agree.
#
# The launcher fingerprint must describe inputs to the Windows bundle, not
# repository bookkeeping. In particular, bug-index regeneration used to make an
# unchanged EXE look stale because docs/BUGS.md and a new docs/bugs/*.md were
# included in the all-worktree diff. Keep the exclusions path-based and
# conservative: application/native/package/tool sources still participate,
# including untracked files.

$script:FushiNonBuildInputPattern = [regex]::new(
  (@(
      # Repository bookkeeping and local diagnostics.
      '^(?:docs/|\.codex-test/|\.worktrees/|\.github/)',
      # Codex scratch directories/scripts and loose compiler objects are local
      # diagnostics; excluding them here keeps a probe or temporary CMake
      # backup from forcing a full app rebuild.
      '(?:^|/)\.codex(?:-|/)',
      '\.obj$',
      '^native/galgame_hook/tools/little_busters_memory_probe\.cpp$',
      # Tests and module docs are not shipped.
      '^(?:fushi/(?:test|integration_test)/|(?:test|integration_test)/|packages/[^/]+/test/|native(?:/[^/]+)*/tests/)',
      '^(?:fushi/docs/|packages/[^/]+/docs/|native(?:/[^/]+)*/docs/)',
      # The launcher and its own bookkeeping scripts decide *whether* to
      # build; changing them must not make an unchanged bundle look stale.
      # The launcher name is escaped so Windows PowerShell's ANSI script
      # decoding cannot corrupt it.
      '^(?:\u542F\u52A8Hibiki\u6700\u65B0\u7248\.bat|tool/(?:get_windows_build_state|windows_build_inputs|resolve_windows_build_root|promote_windows_candidate_build|invoke_windows_build_step)\.ps1)$',
      '(?:^|/)(?:AGENTS|CLAUDE)(?:\.local|\.override)?\.md$'
    ) -join '|'),
  [Text.RegularExpressions.RegexOptions]::CultureInvariant
)

function ConvertTo-FushiRepoRelativePath {
  [OutputType([string])]
  param([Parameter(Mandatory = $true)][AllowEmptyString()][string] $RelativePath)

  $normalized = ($RelativePath -replace '\\', '/')
  while ($normalized.StartsWith('./', [StringComparison]::Ordinal)) {
    $normalized = $normalized.Substring(2)
  }
  return $normalized.TrimStart('/')
}

function Test-IsBuildInputPath {
  [OutputType([bool])]
  param([Parameter(Mandatory = $true)][AllowEmptyString()][string] $RelativePath)

  $normalized = ConvertTo-FushiRepoRelativePath -RelativePath $RelativePath
  if ([string]::IsNullOrWhiteSpace($normalized)) {
    return $false
  }
  return -not $script:FushiNonBuildInputPattern.IsMatch($normalized)
}
