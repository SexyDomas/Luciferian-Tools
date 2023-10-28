@echo off

REM Check if Python version is 3.10+
python --version | findstr /R "^Python 3\.[1][0-9]\." > nul
if errorlevel 1 (
    echo Python version should be 3.10 or higher.
    pause
    exit /b
)

REM Install required packages using pip
pip install aiohttp colorama pyfiglet discord.py-self requests

echo Installation complete.
pause

exit /b