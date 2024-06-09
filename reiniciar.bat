@echo off

:: Finalizar el proceso de php artisan serve
taskkill /F /IM php.exe /T

:: Finalizar el proceso de npm run dev
taskkill /F /IM node.exe /T

:: Esperar unos segundos para asegurarse de que los procesos se hayan detenido
timeout /t 5 /nobreak > nul

:: Cambiar al directorio del script
cd /d "%~dp0"

:: Iniciar los comandos en segundo plano
start /B cmd /c "php artisan serve"
start /B cmd /c "npm run dev"

exit