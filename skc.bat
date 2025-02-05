@echo off
setlocal enabledelayedexpansion

set task=%1

if "%task%"=="" (
    echo Please provide a valid task
    echo to see the help, type mhelp help
    exit /b
)
if "%task%" == "flask" (
    echo Starting Flask server...
    call "%~dp0scripts\mflask.bat"
)
if "%task%" == "next" (
    echo Starting Next.js server...
    call "%~dp0scripts\mnext.bat"
)
if "%task%"=="venv" (
    if exist venv (
        echo Virtual environment already exists.
    ) else (
        echo Creating virtual environment...
        python -m venv venv
        echo Virtual environment created.
    )
)
if "%task%"=="system" (
    echo.
    echo System Information
    echo.
    echo OS: %OS%
    echo Processor: %PROCESSOR_ARCHITECTURE%
    echo.
    echo Computer Name: %COMPUTERNAME%
    echo User Name: %USERNAME%
    echo Date: %DATE%
    echo Time: %TIME%
    echo.
    echo IP Address: 
    for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
        set "IPAddress=%%a"
        echo !IPAddress:~1!
    )
    echo.
)

if "%task%"=="help" (
    echo.
    echo Usage: skc [task]
    echo.
    echo Tasks:
    echo.
    echo flask - create Flask boilderplate
    echo next - create Next.js boilerplate
    echo venv - Create virtual environment
    echo help - Show the commands
    echo system - Show system information

    echo.
)