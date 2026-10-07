@echo off
cd /d "%~dp0"
echo ============================================
echo   RedBooks XHS Crawler
echo ============================================
echo.
python --version >nul 2>&1
if errorlevel 1 goto NOPYTHON
goto GOTPY
:NOPYTHON
echo [ERROR] Python not found! Install Python 3.8+ first.
pause
exit /b
:GOTPY
pip install -r requirements.txt -q
echo Starting...
python crawler_ultimate.py
pause
