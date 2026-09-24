@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Fushi Launcher

rem Some PowerShell/IDE launchers pass both `Path` and `PATH` into cmd.exe.
rem MSBuild treats environment names case-insensitively and then fails when it
rem tries to start cl.exe with the duplicate entries. Keep one canonical PATH.
set "FUSHI_CANONICAL_PATH=!PATH!"
set "PATH="
set "Path="
set "PATH=!FUSHI_CANONICAL_PATH!"
set "FUSHI_CANONICAL_PATH="

rem ============================================================
rem  Fushi smart launcher
rem  - locate the repository from this BAT file, not from a hard-coded path
rem  - build automatically when build-relevant source content changed
rem  - pass "clean" to force a clean rebuild
rem ============================================================

set "REPO=%~dp0"
if "%REPO:~-1%"=="\" set "REPO=%REPO:~0,-1%"
set "APP=%REPO%\fushi"
set "BOOTSTRAP=%REPO%\tool\bootstrap.ps1"
set "PREPARE_ONNX=%REPO%\tool\prepare_windows_onnxruntime.ps1"
set "PREPARE_SQLITE=%REPO%\tool\prepare_windows_sqlite3.ps1"
set "PREPARE_TORRENT=%REPO%\tool\prepare_windows_torrent_runtime.ps1"
set "GET_BUILD_STATE=%REPO%\tool\get_windows_build_state.ps1"
set "GET_FLUTTER_CACHE_STATE=%REPO%\tool\get_windows_flutter_cache_state.ps1"
set "BUILD_HELPER=%REPO%\tool\prepare_windows_gal_helper.ps1"
set "RUNTIME_UNLOCK_CHECK=%REPO%\tool\check_windows_runtime_unlocked.ps1"
set "RESOLVE_BUILD_ROOT=%REPO%\tool\resolve_windows_build_root.ps1"
set "PROMOTE_CANDIDATE=%REPO%\tool\promote_windows_candidate_build.ps1"
set "BUILD_STEP=%REPO%\tool\invoke_windows_build_step.ps1"
set "LOG_DIR=%REPO%\.build-cache\launcher-logs"
set "LOG="
set "EXE=%APP%\build\windows\x64\runner\Release\fushi.exe"
set "RELEASE_BUNDLE=%APP%\build\windows\x64\runner\Release"
set "HELPER_X64=%RELEASE_BUNDLE%\voice_hook\x64"
set "HELPER_X86=%RELEASE_BUNDLE%\voice_hook\x86"
set "STAMP=%APP%\build\.last_built_state"
set "FLUTTER_CACHE_STATE=%APP%\build\.flutter_aot_state"
set "FLUTTER_AOT_CACHE=%APP%\.dart_tool\flutter_build"
set "FLUTTER_AOT_OUTPUT=%APP%\build\windows\app.so"
set "FUSHI_ONNXRUNTIME_ROOT=%REPO%\.build-cache\onnxruntime\onnxruntime-directml-1.22.0"

if not exist "%APP%\pubspec.yaml" (
  echo [ERROR] Fushi app directory not found: %APP%
  goto :fail
)

rem --- route committed candidates to the shared candidate build -----------
rem Every task worktree used to compile all C++ plugins, the Galgame helper
rem and the Dart AOT graph from scratch. A committed candidate now builds in
rem one persistent checkout (.worktrees\_candidate-build) that keeps the
rem objects of unchanged plugins. The main checkout, uncommitted build inputs
rem and FUSHI_BUILD_IN_PLACE=1 still build in place.
if "%FUSHI_BUILD_ROOT_RESOLVED%"=="1" goto :build_root_ready
if not exist "%RESOLVE_BUILD_ROOT%" goto :build_root_ready
set "BUILD_ROOT="
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%RESOLVE_BUILD_ROOT%" -RepoRoot "%REPO%"') do set "BUILD_ROOT=%%i"
if not defined BUILD_ROOT (
  echo [ERROR] Could not prepare the build directory. See the message above.
  goto :fail
)
if /i not "!BUILD_ROOT!"=="%REPO%" (
  echo [BUILD-ROOT] Building this candidate in the shared checkout:
  echo              !BUILD_ROOT!
  set "FUSHI_BUILD_ROOT_RESOLVED=1"
  call "!BUILD_ROOT!\%~nx0" %*
  exit /b !ERRORLEVEL!
)
:build_root_ready

rem --- resolve Flutter -----------------------------------------------------
rem Priority: FUSHI_FLUTTER > FLUTTER_BIN > common local path > PATH.
set "FLUTTER="
if defined FUSHI_FLUTTER set "FLUTTER=%FUSHI_FLUTTER%"
if not defined FLUTTER if defined FLUTTER_BIN set "FLUTTER=%FLUTTER_BIN%"

if defined FLUTTER if not exist "%FLUTTER%" (
  echo [ERROR] Flutter path does not exist: %FLUTTER%
  echo         Set FUSHI_FLUTTER to the full path of flutter.bat.
  goto :fail
)

if not defined FLUTTER if exist "C:\flutter\bin\flutter.bat" set "FLUTTER=C:\flutter\bin\flutter.bat"
if not defined FLUTTER if exist "D:\flutter_sdk\flutter_extracted\flutter\bin\flutter.bat" set "FLUTTER=D:\flutter_sdk\flutter_extracted\flutter\bin\flutter.bat"
if not defined FLUTTER for /f "delims=" %%F in ('where flutter.bat 2^>nul') do if not defined FLUTTER set "FLUTTER=%%F"

if not defined FLUTTER (
  echo [ERROR] Flutter was not found.
  echo         Install Flutter, add it to PATH, or set FUSHI_FLUTTER to flutter.bat.
  goto :fail
)
echo [INFO] Flutter: %FLUTTER%

rem --- compute current build-input state ----------------------------------
if not exist "%GET_BUILD_STATE%" (
  echo [ERROR] Build-state script not found: %GET_BUILD_STATE%
  goto :fail
)
set "STATE="
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_BUILD_STATE%" -RepoRoot "%REPO%"') do set "STATE=%%i"
if not defined STATE (
  echo [ERROR] Cannot compute the source state for: %REPO%
  goto :fail
)

cd /d "%APP%"

rem Fail before clean/dependency resolution/compilation if an old
rem Fushi/helper/DLL is still loaded. Never kill it here: the user may still
rem be playing a game.
if exist "%EXE%" (
  powershell -NoProfile -ExecutionPolicy Bypass -File "%RUNTIME_UNLOCK_CHECK%" -BundleDirectory "%APP%\build\windows\x64\runner\Release"
  if errorlevel 1 goto :runtime_locked
)

rem --- force clean rebuild -------------------------------------------------
if /i "%~1"=="clean" (
  echo [CLEAN] Forcing clean rebuild...
  call "%FLUTTER%" clean
  if errorlevel 1 goto :build_failed
  goto :build
)

rem A matching source stamp is not enough if a previous install was manually
rem damaged. Rebuild instead of launching an app that cannot inject the helper.
if exist "%EXE%" (
  if not exist "%HELPER_X64%\fushi_voice_injector.exe" (
    echo [BUILD] Existing Release bundle has no complete Galgame helper; rebuilding...
    goto :build
  )
  if not exist "%HELPER_X64%\fushi_voice_hook.dll" (
    echo [BUILD] Existing Release bundle has no complete Galgame helper; rebuilding...
    goto :build
  )
  if not exist "%HELPER_X86%\fushi_voice_injector.exe" (
    echo [BUILD] Existing Release bundle has no complete Galgame helper; rebuilding...
    goto :build
  )
  if not exist "%HELPER_X86%\fushi_voice_hook.dll" (
    echo [BUILD] Existing Release bundle has no complete Galgame helper; rebuilding...
    goto :build
  )
)

rem --- compare the last built source state --------------------------------
set "BUILT="
if exist "%STAMP%" set /p BUILT=<"%STAMP%"

if not exist "%EXE%" (
  echo [BUILD] No existing build here.
  goto :try_reuse
)
if not "!BUILT!"=="!STATE!" (
  echo [BUILD] Source changed:
  echo         old: !BUILT!
  echo         new: !STATE!
  goto :try_reuse
)

echo [SKIP] This exact source state is already built; launching directly.
goto :launch

rem --- reuse a verified candidate bundle ------------------------------------
rem The state is content based, so merging an accepted candidate yields the
rem same state the shared candidate checkout already built. Copy that bundle
rem instead of compiling identical sources a second time.
:try_reuse
if not exist "%PROMOTE_CANDIDATE%" goto :build
powershell -NoProfile -ExecutionPolicy Bypass -File "%PROMOTE_CANDIDATE%" -RepoRoot "%REPO%" -State "!STATE!"
set "PROMOTE_EXIT=!ERRORLEVEL!"
if "!PROMOTE_EXIT!"=="0" goto :launch
if not "!PROMOTE_EXIT!"=="3" (
  echo [ERROR] Reusing the candidate bundle failed; nothing was launched.
  goto :fail
)
echo         Compiling, please wait...

:build
rem Every compile writes a timestamped log; a failed one is also copied to
rem last-failure.log so it can be inspected after this window closes.
for /f "delims=" %%t in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd-HHmmss"') do set "LOG_STAMP=%%t"
set "LOG=%LOG_DIR%\launcher-!LOG_STAMP!.log"
powershell -NoProfile -ExecutionPolicy Bypass -File "%BUILD_STEP%" -Log "!LOG!" -Begin
if errorlevel 1 (
  echo [ERROR] Could not create the build log: !LOG!
  set "LOG="
  goto :fail
)
echo [LOG] Writing build log: !LOG!

if not exist "%BOOTSTRAP%" (
  echo [ERROR] Bootstrap script not found: %BOOTSTRAP%
  goto :fail
)

rem --- make Git Bash available to bootstrap.ps1 ----------------------------
rem Git for Windows is installed, but bash.exe is not always on PowerShell PATH.
set "GIT_ROOT="
if exist "%ProgramFiles%\Git\bin\bash.exe" set "GIT_ROOT=%ProgramFiles%\Git"
if not defined GIT_ROOT if exist "%LocalAppData%\Programs\Git\bin\bash.exe" set "GIT_ROOT=%LocalAppData%\Programs\Git"
if not defined GIT_ROOT (
  set "GIT_EXE="
  for /f "delims=" %%G in ('where git.exe 2^>nul') do if not defined GIT_EXE set "GIT_EXE=%%G"
  if defined GIT_EXE for %%G in ("!GIT_EXE!") do set "GIT_ROOT=%%~dpG.."
)
if not defined GIT_ROOT (
  echo [ERROR] Git Bash was not found.
  echo         Install Git for Windows or add bash.exe to PATH.
  goto :fail
)
if not exist "!GIT_ROOT!\bin\bash.exe" (
  echo [ERROR] Git Bash executable was not found under: !GIT_ROOT!
  goto :fail
)
set "PATH=!GIT_ROOT!\bin;!GIT_ROOT!\usr\bin;!PATH!"
echo [INFO] Git Bash: !GIT_ROOT!\bin\bash.exe

rem Visual Studio 2026/MSBuild file tracking can hang during CMake try-compile.
rem This only disables source tracking for this build; it does not affect output.
set "TrackFileAccess=false"

rem Bootstrap must run from the repository root so ci/apply-patches.sh resolves correctly.
echo [1/7] Resolving Flutter packages and applying repository patches...
set "FUSHI_FLUTTER=%FLUTTER%"
pushd "%REPO%"
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%BOOTSTRAP%""
call :run_step "[1/7] Flutter packages and patches"
set "BOOTSTRAP_EXIT=!ERRORLEVEL!"
popd
if not "!BOOTSTRAP_EXIT!"=="0" (
  echo [ERROR] Dependency setup failed. The app was not launched.
  goto :fail
)

if not exist "%PREPARE_ONNX%" (
  echo [ERROR] ONNX Runtime preparation script not found: %PREPARE_ONNX%
  goto :fail
)
echo [2/7] Preparing persistent ONNX Runtime cache...
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%PREPARE_ONNX%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\onnxruntime""
call :run_step "[2/7] ONNX Runtime cache"
if errorlevel 1 goto :dependency_failed

if not exist "%PREPARE_SQLITE%" (
  echo [ERROR] SQLite preparation script not found: %PREPARE_SQLITE%
  goto :fail
)
echo [3/7] Preparing persistent SQLite native asset cache...
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%PREPARE_SQLITE%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\sqlite3""
call :run_step "[3/7] SQLite native asset cache"
if errorlevel 1 goto :dependency_failed
set "FUSHI_SQLITE3_SOURCE_DIR=%REPO%\.build-cache\sqlite3\sqlite-autoconf-3520000"

if not exist "%PREPARE_TORRENT%" (
  echo [ERROR] Torrent runtime preparation script not found: %PREPARE_TORRENT%
  goto :fail
)
echo [4/7] Preparing the bundled torrent runtime...
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%PREPARE_TORRENT%" -RepoRoot "%REPO%""
call :run_step "[4/7] Torrent runtime"
if errorlevel 1 goto :dependency_failed

rem Another launcher may have completed the same source build while this
rem invocation was resolving dependencies. Re-read the marker immediately
rem before the expensive helper build so that an already-finished build cannot
rem be duplicated from an earlier stale decision snapshot.
if /i not "%~1"=="clean" (
  set "RECHECK_STATE="
  for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_BUILD_STATE%" -RepoRoot "%REPO%"') do set "RECHECK_STATE=%%i"
  set "RECHECK_BUILT="
  if exist "%STAMP%" set /p RECHECK_BUILT=<"%STAMP%"
  if exist "%EXE%" if defined RECHECK_STATE if "!RECHECK_BUILT!"=="!RECHECK_STATE!" (
    echo [SKIP] Another launcher already completed this exact source state; launching directly.
    goto :launch
  )
)

rem From here on the Release bundle is modified. Drop the stamp first so a
rem half-finished build can never be launched or reused as a finished one.
if exist "%STAMP%" del /f /q "%STAMP%"

if not exist "%BUILD_HELPER%" (
  echo [ERROR] Galgame helper build script not found: %BUILD_HELPER%
  goto :fail
)
echo [5/7] Building the bundled Galgame helper (production targets)...
set "HELPER_FORCE_ARG="
if /i "%~1"=="clean" set "HELPER_FORCE_ARG=-Force"
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%BUILD_HELPER%" -RepoRoot "%REPO%" %HELPER_FORCE_ARG%"
call :run_step "[5/7] Galgame helper"
if errorlevel 1 goto :helper_failed

if not exist "%GET_FLUTTER_CACHE_STATE%" (
  echo [ERROR] Flutter cache-state script not found: %GET_FLUTTER_CACHE_STATE%
  goto :fail
)
set "FLUTTER_STATE="
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_FLUTTER_CACHE_STATE%" -RepoRoot "%REPO%" -FlutterExecutable "%FLUTTER%" 2^>nul') do set "FLUTTER_STATE=%%i"
if not defined FLUTTER_STATE (
  echo [ERROR] Cannot compute the Flutter incremental-cache state.
  goto :fail
)

rem Keep Flutter's incremental kernel/AOT cache for ordinary source edits. The
rem old launcher deleted it on every build, forcing a full Dart relink even
rem after a native-only change. Reset only after a branch, commit, dependency,
rem or Flutter SDK state change, or when explicitly requested with
rem FUSHI_FORCE_FLUTTER_AOT_RESET=1.
set "OLD_FLUTTER_STATE="
if exist "%FLUTTER_CACHE_STATE%" set /p OLD_FLUTTER_STATE=<"%FLUTTER_CACHE_STATE%"
set "RESET_FLUTTER_AOT=0"
if not defined OLD_FLUTTER_STATE set "RESET_FLUTTER_AOT=1"
if defined OLD_FLUTTER_STATE if not "!OLD_FLUTTER_STATE!"=="!FLUTTER_STATE!" set "RESET_FLUTTER_AOT=1"
if /i "%FUSHI_FORCE_FLUTTER_AOT_RESET%"=="1" set "RESET_FLUTTER_AOT=1"
if "!RESET_FLUTTER_AOT!"=="1" (
  if exist "%FLUTTER_AOT_CACHE%" (
    echo [AOT] Resetting Flutter incremental cache after state change...
    rmdir /s /q "%FLUTTER_AOT_CACHE%"
    if exist "%FLUTTER_AOT_CACHE%" (
      echo [ERROR] Could not remove Flutter AOT cache: %FLUTTER_AOT_CACHE%
      goto :build_failed
    )
  )
  if exist "%FLUTTER_AOT_OUTPUT%" del /f /q "%FLUTTER_AOT_OUTPUT%"
) else (
  echo [AOT] Reusing Flutter incremental cache.
)

echo [6/7] flutter build windows --release ...
set "FUSHI_STEP_EXE=%FLUTTER%"
set "FUSHI_STEP_ARGS=build windows --release"
call :run_step "[6/7] flutter build windows --release"
if errorlevel 1 goto :build_failed

echo [7/7] Installing bundled Windows runtime (ffmpeg / ffprobe / VC++ CRT) ...
set "FUSHI_STEP_EXE=powershell"
set "FUSHI_STEP_ARGS=-NoProfile -ExecutionPolicy Bypass -File "%REPO%\tool\package_windows_runtime.ps1" -RepoRoot "%REPO%" -ReleaseDir "%APP%\build\windows\x64\runner\Release" -HelperAlreadyBuilt"
call :run_step "[7/7] Windows runtime packaging"
if errorlevel 1 goto :runtime_failed

if not exist "%EXE%" (
  echo [ERROR] Build completed but executable was not found: %EXE%
  goto :fail
)
>"%FLUTTER_CACHE_STATE%" echo !FLUTTER_STATE!
rem Bootstrap may update generated dependency state but not source inputs. Re-read
rem the fingerprint after the successful build so the stamp names exactly what
rem is in the bundle.
set "STATE="
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_BUILD_STATE%" -RepoRoot "%REPO%"') do set "STATE=%%i"
if not defined STATE (
  echo [ERROR] Build succeeded but the source state could not be recorded.
  goto :fail
)
>"%STAMP%" echo !STATE!
echo [OK] Build succeeded.
call :end_log ok

:launch
if not exist "%EXE%" (
  echo [ERROR] Executable not found: %EXE%
  goto :fail
)
if /i "%FUSHI_BUILD_ONLY%"=="1" (
  echo [OK] Build-only mode requested; executable was not launched.
  endlocal
  exit /b 0
)
start "" "%EXE%"
endlocal
exit /b 0

:build_failed
echo [ERROR] Flutter build failed. The app was not launched.
goto :fail

:dependency_failed
echo [ERROR] Windows native dependency setup failed. The app was not launched.
goto :fail

:helper_failed
echo [ERROR] Galgame helper build or tests failed. The app was not launched.
goto :fail

:runtime_failed
echo [ERROR] Windows runtime packaging failed. The app was not launched.
goto :fail

:runtime_locked
echo [ERROR] Existing Fushi/Galgame runtime is still in use. Build was not started.

:fail
if defined LOG call :end_log failed
echo.
pause >nul
endlocal
exit /b 1

rem --- subroutines ------------------------------------------------------------
rem Runs FUSHI_STEP_EXE with FUSHI_STEP_ARGS: live output, appended to the log,
rem timed. Returns the step's exit code.
:run_step
powershell -NoProfile -ExecutionPolicy Bypass -File "%BUILD_STEP%" -Log "!LOG!" -Title "%~1"
exit /b !ERRORLEVEL!

:end_log
powershell -NoProfile -ExecutionPolicy Bypass -File "%BUILD_STEP%" -Log "!LOG!" -End -Result %~1
exit /b 0
