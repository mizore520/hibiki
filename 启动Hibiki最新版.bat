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
set "BUILD_HELPER=%REPO%\tool\prepare_windows_gal_helper.ps1"
set "RUNTIME_UNLOCK_CHECK=%REPO%\tool\check_windows_runtime_unlocked.ps1"
set "EXE=%APP%\build\windows\x64\runner\Release\fushi.exe"
set "STAMP=%APP%\build\.last_built_state"
set "FLUTTER_AOT_CACHE=%APP%\.dart_tool\flutter_build"
set "FLUTTER_AOT_OUTPUT=%APP%\build\windows\app.so"
set "FUSHI_ONNXRUNTIME_ROOT=%REPO%\.build-cache\onnxruntime\onnxruntime-win-x64-1.22.0"

if not exist "%APP%\pubspec.yaml" (
  echo [ERROR] Fushi app directory not found: %APP%
  goto :fail
)

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
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_BUILD_STATE%" -RepoRoot "%REPO%" 2^>nul') do set "STATE=%%i"
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

rem --- compare the last built source state --------------------------------
set "BUILT="
if exist "%STAMP%" set /p BUILT=<"%STAMP%"

if not exist "%EXE%" (
  echo [BUILD] No existing build, compiling for the first time...
  goto :build
)
if not "!BUILT!"=="!STATE!" (
  echo [BUILD] Source changed:
  echo         old: !BUILT!
  echo         new: !STATE!
  echo         Compiling, please wait...
  goto :build
)

echo [SKIP] This exact source state is already built; launching directly.
goto :launch

:build
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
powershell -NoProfile -ExecutionPolicy Bypass -File "%BOOTSTRAP%"
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
powershell -NoProfile -ExecutionPolicy Bypass -File "%PREPARE_ONNX%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\onnxruntime"
if errorlevel 1 goto :dependency_failed

if not exist "%PREPARE_SQLITE%" (
  echo [ERROR] SQLite preparation script not found: %PREPARE_SQLITE%
  goto :fail
)
echo [3/7] Preparing persistent SQLite native asset cache...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PREPARE_SQLITE%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\sqlite3"
if errorlevel 1 goto :dependency_failed
set "FUSHI_SQLITE3_SOURCE_DIR=%REPO%\.build-cache\sqlite3\sqlite-autoconf-3520000"

if not exist "%PREPARE_TORRENT%" (
  echo [ERROR] Torrent runtime preparation script not found: %PREPARE_TORRENT%
  goto :fail
)
echo [4/7] Preparing the bundled torrent runtime...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PREPARE_TORRENT%" -RepoRoot "%REPO%"
if errorlevel 1 goto :dependency_failed

if not exist "%BUILD_HELPER%" (
  echo [ERROR] Galgame helper build script not found: %BUILD_HELPER%
  goto :fail
)
echo [5/7] Building and testing the bundled Galgame helper...
powershell -NoProfile -ExecutionPolicy Bypass -File "%BUILD_HELPER%" -RepoRoot "%REPO%"
if errorlevel 1 goto :helper_failed

rem A Git merge/worktree switch can give newly checked-out Dart sources older
rem timestamps than an existing incremental kernel cache. Flutter may then
rem relink a fresh app.so around stale package code (for example schema v88
rem after the source already moved to v89). Remove only the reproducible Dart
rem AOT cache/output whenever a real source build is required. Native and
rem downloaded dependency caches remain intact, and the exact-state fast path
rem above still skips all compilation on subsequent double-clicks.
if exist "%FLUTTER_AOT_CACHE%" (
  echo [AOT] Invalidating stale Flutter AOT cache...
  rmdir /s /q "%FLUTTER_AOT_CACHE%"
  if exist "%FLUTTER_AOT_CACHE%" (
    echo [ERROR] Could not remove Flutter AOT cache: %FLUTTER_AOT_CACHE%
    goto :build_failed
  )
)
if exist "%FLUTTER_AOT_OUTPUT%" del /f /q "%FLUTTER_AOT_OUTPUT%"

echo [6/7] flutter build windows --release ...
call "%FLUTTER%" build windows --release
if errorlevel 1 goto :build_failed

echo [7/7] Installing bundled Windows runtime (ffmpeg / ffprobe / VC++ CRT) ...
powershell -NoProfile -ExecutionPolicy Bypass -File "%REPO%\tool\package_windows_runtime.ps1" -RepoRoot "%REPO%" -ReleaseDir "%APP%\build\windows\x64\runner\Release" -HelperAlreadyBuilt
if errorlevel 1 goto :runtime_failed

if not exist "%EXE%" (
  echo [ERROR] Build completed but executable was not found: %EXE%
  goto :fail
)
rem Bootstrap may update generated dependency state but not source inputs. Re-read
rem the fingerprint after the successful build so the stamp names exactly what
rem is in the bundle.
set "STATE="
for /f "delims=" %%i in ('powershell -NoProfile -ExecutionPolicy Bypass -File "%GET_BUILD_STATE%" -RepoRoot "%REPO%" 2^>nul') do set "STATE=%%i"
if not defined STATE (
  echo [ERROR] Build succeeded but the source state could not be recorded.
  goto :fail
)
>"%STAMP%" echo !STATE!
echo [OK] Build succeeded.

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
echo.
pause >nul
endlocal
exit /b 1
