@echo off
setlocal
set "DIR=%~dp0"
set "BIN=%DIR%target\release\horizon-launcher.exe"
if not exist "%BIN%" set "BIN=%DIR%horizon-launcher.exe"
if "%HORIZON_LAUNCHER_HOME%"=="" for /f "delims=" %%d in ('powershell -NoProfile -Command "[System.IO.Path]::GetTempPath() + 'horizon-launcher-' + [guid]::NewGuid()"') do set "HORIZON_LAUNCHER_HOME=%%d"
if "%HORIZON_HOME%"=="" for /f "delims=" %%d in ('powershell -NoProfile -Command "[System.IO.Path]::GetTempPath() + 'horizon-game-' + [guid]::NewGuid()"') do set "HORIZON_HOME=%%d"
set "XDG_DATA_HOME=%HORIZON_LAUNCHER_HOME%\data"
set "XDG_CONFIG_HOME=%HORIZON_LAUNCHER_HOME%\config"
if "%HORIZON_LAUNCHER_NO_SELF_UPDATE%"=="" set "HORIZON_LAUNCHER_NO_SELF_UPDATE=1"
set "HORIZON_NO_AUDIO="
"%BIN%" %*
