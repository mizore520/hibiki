<#
.SYNOPSIS
  Run one smart-launcher step with live output, a persistent log and timing.

.DESCRIPTION
  Modes:
    -Begin              start a new log (header + start time), prune old logs
    (default)           run FUSHI_STEP_EXE with FUSHI_STEP_ARGS; exit with its code
    -End -Result <r>    append the per-step timing summary; on failure also
                        copy the log to last-failure.log

  The command comes from environment variables so the launcher does not have
  to nest cmd.exe and PowerShell quoting. Output is shown live and appended to
  the log; each step's duration is also appended to timings.csv next to it.
#>
[CmdletBinding(DefaultParameterSetName = 'Step')]
param(
  [Parameter(Mandatory = $true)]
  [string] $Log,

  [Parameter(ParameterSetName = 'Begin', Mandatory = $true)]
  [switch] $Begin,

  [Parameter(ParameterSetName = 'Step', Mandatory = $true)]
  [string] $Title,

  [Parameter(ParameterSetName = 'End', Mandatory = $true)]
  [switch] $End,

  [Parameter(ParameterSetName = 'End', Mandatory = $true)]
  [ValidateSet('ok', 'failed')]
  [string] $Result
)

Set-StrictMode -Version Latest
# Native tools write progress to stderr; never let that abort the step.
$ErrorActionPreference = 'Continue'

$utf8Bom = [Text.UTF8Encoding]::new($true)
$logDirectory = Split-Path -Parent $Log
$keepLogs = 20

function Add-LogLine {
  param([Parameter(Mandatory = $true)][AllowEmptyString()][string] $Text)
  [IO.File]::AppendAllText($Log, $Text + "`r`n", $utf8Bom)
}

function Write-Both {
  param([Parameter(Mandatory = $true)][AllowEmptyString()][string] $Text)
  [Console]::Out.WriteLine($Text)
  Add-LogLine $Text
}

function Format-Seconds {
  [OutputType([string])]
  param([Parameter(Mandatory = $true)][double] $Seconds)
  if ($Seconds -lt 60) { return ('{0:0.0}s' -f $Seconds) }
  return ('{0}m{1:00}s' -f [int][Math]::Floor($Seconds / 60), [int]($Seconds % 60))
}

if ($Begin) {
  New-Item -ItemType Directory -Force -Path $logDirectory | Out-Null
  [IO.File]::WriteAllText($Log, '', $utf8Bom)
  Add-LogLine ("# Fushi launcher log`r`n# started`t{0:o}`r`n# repo`t{1}" -f [DateTimeOffset]::Now, (Get-Location).Path)
  Get-ChildItem -LiteralPath $logDirectory -Filter 'launcher-*.log' -File |
    Sort-Object LastWriteTime -Descending |
    Select-Object -Skip $keepLogs |
    Remove-Item -Force -ErrorAction SilentlyContinue
  exit 0
}

if ($End) {
  if (-not (Test-Path -LiteralPath $Log -PathType Leaf)) { exit 0 }
  $lines = [IO.File]::ReadAllLines($Log, $utf8Bom)
  $started = $null
  foreach ($line in $lines) {
    if ($line.StartsWith("# started`t", [StringComparison]::Ordinal)) {
      $started = [DateTimeOffset]::Parse($line.Substring(10))
      break
    }
  }
  Write-Both ''
  Write-Both '[TIME] Step summary:'
  foreach ($line in $lines) {
    if ($line.StartsWith('[TIME] ', [StringComparison]::Ordinal) -and
        -not $line.StartsWith('[TIME] Step summary', [StringComparison]::Ordinal) -and
        -not $line.StartsWith('[TIME] Total', [StringComparison]::Ordinal)) {
      Write-Both ('  ' + $line.Substring(7))
    }
  }
  if ($null -ne $started) {
    $total = ([DateTimeOffset]::Now - $started).TotalSeconds
    Write-Both ('[TIME] Total: {0} ({1})' -f (Format-Seconds $total), $Result)
  }
  if ($Result -eq 'failed') {
    $lastFailure = Join-Path $logDirectory 'last-failure.log'
    Copy-Item -LiteralPath $Log -Destination $lastFailure -Force
    [Console]::Out.WriteLine('')
    [Console]::Out.WriteLine("[LOG] Full build log: $Log")
    [Console]::Out.WriteLine("[LOG] Also copied to:  $lastFailure")
  }
  else {
    [Console]::Out.WriteLine("[LOG] Build log: $Log")
  }
  exit 0
}

$exe = $env:FUSHI_STEP_EXE
$arguments = $env:FUSHI_STEP_ARGS
if ([string]::IsNullOrWhiteSpace($exe)) {
  Write-Both "[ERROR] $Title`: FUSHI_STEP_EXE is not set."
  exit 2
}
if ($null -eq $arguments) { $arguments = '' }

Add-LogLine ''
Add-LogLine ("## {0}  ({1:HH:mm:ss})" -f $Title, [DateTimeOffset]::Now)
Add-LogLine ("## > `"{0}`" {1}" -f $exe, $arguments)

# cmd /s /c "<quoted exe> <args> 2>&1" runs .bat and .exe alike, keeps the
# caller's quoting of individual arguments intact and interleaves stderr in
# order. The command line is set verbatim: Windows PowerShell's own native
# argument quoting mangles embedded quotes.
$startInfo = [Diagnostics.ProcessStartInfo]::new()
$startInfo.FileName = Join-Path $env:SystemRoot 'System32\cmd.exe'
$startInfo.Arguments = '/d /s /c ""' + $exe + '" ' + $arguments + ' 2>&1"'
$startInfo.UseShellExecute = $false
$startInfo.RedirectStandardOutput = $true
$startInfo.StandardOutputEncoding = [Console]::OutputEncoding
$startInfo.WorkingDirectory = (Get-Location).Path

$watch = [Diagnostics.Stopwatch]::StartNew()
$process = [Diagnostics.Process]::Start($startInfo)
while ($null -ne ($line = $process.StandardOutput.ReadLine())) {
  Write-Both $line
}
$process.WaitForExit()
$exitCode = $process.ExitCode
$process.Dispose()
$watch.Stop()

$seconds = $watch.Elapsed.TotalSeconds
$status = if ($exitCode -eq 0) { 'ok' } else { "exit $exitCode" }
Write-Both ('[TIME] {0}: {1} ({2})' -f $Title, (Format-Seconds $seconds), $status)

$csv = Join-Path $logDirectory 'timings.csv'
if (-not (Test-Path -LiteralPath $csv -PathType Leaf)) {
  [IO.File]::WriteAllText($csv, "time,step,seconds,exit`r`n", $utf8Bom)
}
[IO.File]::AppendAllText(
  $csv,
  ('{0:yyyy-MM-dd HH:mm:ss},"{1}",{2:0.0},{3}' -f [DateTimeOffset]::Now, $Title.Replace('"', "'"), $seconds, $exitCode) + "`r`n",
  $utf8Bom
)

exit $exitCode
