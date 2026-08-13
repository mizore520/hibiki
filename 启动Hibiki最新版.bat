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
rem  - build automatically when the source commit changed or no EXE exists
rem  - pass "clean" to force a clean rebuild
rem ============================================================

set "REPO=%~dp0"
if "%REPO:~-1%"=="\" set "REPO=%REPO:~0,-1%"
set "APP=%REPO%\fushi"
set "BOOTSTRAP=%REPO%\tool\bootstrap.ps1"
set "PREPARE_ONNX=%REPO%\tool\prepare_windows_onnxruntime.ps1"
set "PREPARE_SQLITE=%REPO%\tool\prepare_windows_sqlite3.ps1"
set "RUNTIME_UNLOCK_CHECK=%REPO%\tool\check_windows_runtime_unlocked.ps1"
set "EXE=%APP%\build\windows\x64\runner\Release\fushi.exe"
set "STAMP=%APP%\build\.last_built_commit"
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

rem --- read current git HEAD ----------------------------------------------
set "HEAD="
for /f "delims=" %%i in ('git -C "%REPO%" rev-parse --verify HEAD 2^>nul') do set "HEAD=%%i"
if not defined HEAD (
  echo [ERROR] Cannot read the Git HEAD for: %REPO%
  echo         Run this BAT from a valid Git checkout.
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

rem --- compare the last built commit --------------------------------------
set "BUILT="
if exist "%STAMP%" set /p BUILT=<"%STAMP%"

if not exist "%EXE%" (
  echo [BUILD] No existing build, compiling for the first time...
  goto :build
)
if not "!BUILT!"=="!HEAD!" (
  echo [BUILD] Source changed:
  echo         old: !BUILT!
  echo         new: !HEAD!
  echo         Compiling, please wait...
  goto :build
)

rem A user may edit custom code without committing it.  HEAD alone cannot see
rem that case, so any tracked/untracked working-tree change also rebuilds.
for /f "delims=" %%S in ('git -C "%REPO%" status --porcelain --untracked-files=all 2^>nul') do goto :dirty_build

echo [SKIP] Already built at !HEAD:~0,12!, launching directly.
goto :launch

:dirty_build
echo [BUILD] Working tree has local changes; compiling the current checkout...
goto :build

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
echo [1/5] Resolving Flutter packages and applying repository patches...
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
echo [2/5] Preparing persistent ONNX Runtime cache...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PREPARE_ONNX%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\onnxruntime"
if errorlevel 1 goto :dependency_failed

if not exist "%PREPARE_SQLITE%" (
  echo [ERROR] SQLite preparation script not found: %PREPARE_SQLITE%
  goto :fail
)
echo [3/5] Preparing persistent SQLite native asset cache...
powershell -NoProfile -ExecutionPolicy Bypass -File "%PREPARE_SQLITE%" -RepoRoot "%REPO%" -CacheDirectory "%REPO%\.build-cache\sqlite3"
if errorlevel 1 goto :dependency_failed
set "FUSHI_SQLITE3_SOURCE_DIR=%REPO%\.build-cache\sqlite3\sqlite-autoconf-3520000"

echo [4/5] flutter build windows --release ...
call "%FLUTTER%" build windows --release
if errorlevel 1 goto :build_failed

echo [5/5] Installing bundled Windows runtime (ffmpeg / ffprobe / VC++ CRT) ...
powershell -NoProfile -ExecutionPolicy Bypass -File "%REPO%\tool\package_windows_runtime.ps1" -RepoRoot "%REPO%" -ReleaseDir "%APP%\build\windows\x64\runner\Release"
if errorlevel 1 goto :runtime_failed

if not exist "%EXE%" (
  echo [ERROR] Build completed but executable was not found: %EXE%
  goto :fail
)
>"%STAMP%" echo !HEAD!
echo [OK] Build succeeded.

:launch
if not exist "%EXE%" (
  echo [ERROR] Executable not found: %EXE%
  goto :fail
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
