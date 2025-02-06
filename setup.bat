@echo off
setlocal

:: Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"  REM Remove trailing slash

:: Get the current user PATH
for /f "tokens=2,*" %%A in ('reg query "HKCU\Environment" /v Path ^| findstr Path') do set CURRENT_PATH=%%B

:: Check if the path is already in PATH
echo %CURRENT_PATH% | findstr /I /C:"%SCRIPT_DIR%" >nul
if %errorlevel%==0 (
    echo Path is already in the environment variables.
    exit /b
)

:: Add script directory to PATH
setx Path "%CURRENT_PATH%;%SCRIPT_DIR%"

echo %SCRIPT_DIR% added to PATH successfully! Restart required for changes to take effect.
pause
exit /b
