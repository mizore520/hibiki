@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Hibiki Launcher

rem ============================================================
rem  Hibiki smart launcher
rem  - locate the repository from this BAT file, not from a hard-coded path
rem  - build automatically when the source commit changed or no EXE exists
rem  - pass "clean" to force a clean rebuild
rem ============================================================

set "REPO=%~dp0"
if "%REPO:~-1%"=="\" set "REPO=%REPO:~0,-1%"
set "APP=%REPO%\hibiki"
set "BOOTSTRAP=%REPO%\tool\bootstrap.ps1"
set "EXE=%APP%\build\windows\x64\runner\Release\hibiki.exe"
set "STAMP=%APP%\build\.last_built_commit"

if not exist "%APP%\pubspec.yaml" (
  echo [ERROR] Hibiki app directory not found: %APP%
  goto :fail
)

rem --- resolve Flutter -----------------------------------------------------
rem Priority: HIBIKI_FLUTTER > FLUTTER_BIN > common local path > PATH.
set "FLUTTER="
if defined HIBIKI_FLUTTER set "FLUTTER=%HIBIKI_FLUTTER%"
if not defined FLUTTER if defined FLUTTER_BIN set "FLUTTER=%FLUTTER_BIN%"

if defined FLUTTER if not exist "%FLUTTER%" (
  echo [ERROR] Flutter path does not exist: %FLUTTER%
  echo         Set HIBIKI_FLUTTER to the full path of flutter.bat.
  goto :fail
)

if not defined FLUTTER if exist "C:\flutter\bin\flutter.bat" set "FLUTTER=C:\flutter\bin\flutter.bat"
if not defined FLUTTER if exist "D:\flutter_sdk\flutter_extracted\flutter\bin\flutter.bat" set "FLUTTER=D:\flutter_sdk\flutter_extracted\flutter\bin\flutter.bat"
if not defined FLUTTER for /f "delims=" %%F in ('where flutter.bat 2^>nul') do if not defined FLUTTER set "FLUTTER=%%F"

if not defined FLUTTER (
  echo [ERROR] Flutter was not found.
  echo         Install Flutter, add it to PATH, or set HIBIKI_FLUTTER to flutter.bat.
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

echo [SKIP] Already built at !HEAD:~0,12!, launching directly.
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

rem Bootstrap must run from the repository root so ci/apply-patches.sh resolves correctly.
echo [1/2] Resolving Flutter packages and applying repository patches...
set "HIBIKI_FLUTTER=%FLUTTER%"
pushd "%REPO%"
powershell -NoProfile -ExecutionPolicy Bypass -File "%BOOTSTRAP%"
set "BOOTSTRAP_EXIT=!ERRORLEVEL!"
popd
if not "!BOOTSTRAP_EXIT!"=="0" (
  echo [ERROR] Dependency setup failed. The app was not launched.
  goto :fail
)

echo [2/2] flutter build windows --release ...
call "%FLUTTER%" build windows --release
if errorlevel 1 goto :build_failed

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

:fail
echo.
pause >nul
endlocal
exit /b 1
