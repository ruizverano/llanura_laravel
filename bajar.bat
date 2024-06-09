@echo off

:: Finalizar el proceso de php artisan serve
taskkill /F /IM php.exe /T

:: Finalizar el proceso de npm run dev
taskkill /F /IM node.exe /T

exit
