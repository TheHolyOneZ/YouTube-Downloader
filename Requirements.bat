@echo off
color 0A

echo ==================================================
echo YouTube-Download Requirements Installer By TheZ
echo ==================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    echo Python is not installed or not in PATH!
    echo Please install Python and try again.
    pause
    exit /b 1
)

echo Checking for pip...
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    color 0E
    echo pip is not installed or not in PATH!
    echo Installing pip...
    python -m ensurepip --default-pip
)

echo.
echo Installing yt-dlp...
pip install --upgrade yt-dlp

if %errorlevel% equ 0 (
    color 0A
    echo.
    echo ================================
    echo    Installation Successful!
    echo ================================
    echo.
    echo yt-dlp has been installed/updated.
    echo You can now start the Downloader.py
) else (
    color 0C
    echo.
    echo ================================
    echo    Installation Failed!
    echo ================================
    echo.
    echo There was an error installing yt-dlp.
    echo Please check your internet connection and try again.
)

echo.
echo join my discord: https://discord.gg/zsGTqgnsmK
echo.
pause
