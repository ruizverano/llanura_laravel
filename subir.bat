@echo off
cd /d "%~dp0"
start /B cmd /c "php artisan serve"
start /B cmd /c "npm run dev"
exit
