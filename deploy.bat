@echo off
echo.
echo  Deploying Flexi to GitHub Pages...
echo.

cd /d "%~dp0"

git add -A

:: Use timestamp as commit message
for /f "tokens=*" %%i in ('powershell -command "Get-Date -Format \"yyyy-MM-dd HH:mm\""') do set TIMESTAMP=%%i
git commit -m "Update %TIMESTAMP%"

git push origin main

echo.
echo  Done! Your site will be live at:
echo  https://aestalia.github.io/flexi/
echo  (usually takes 1-2 minutes)
echo.
pause
