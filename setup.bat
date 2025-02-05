@echo off
setlocal

:: Define the new path you want to add
set "NEW_PATH1=%cd%"
set "NEW_PATH2=%cd%\scripts"

:: Get the current PATH variable
for /f "tokens=2,*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path') do set "OLD_PATH=%%b"

:: Check if the path is already in PATH to avoid duplication
echo %OLD_PATH% | findstr /I /C:"%NEW_PATH%" >nul
if not errorlevel 1 (
    echo Path is already present.
    exit /b
)

:: Add the new path to the system PATH variable
set "UPDATED_PATH=%OLD_PATH%;%NEW_PATH1%"
set "UPDATED_PATH=%UPDATED_PATH%;%NEW_PATH2%"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%UPDATED_PATH%" /f

echo New path added successfully. Please restart your system or log out and log back in for changes to take effect.

endlocal
