@echo off
setlocal enabledelayedexpansion

:: Function to check if port is in use
:check_port
netstat -ano | findstr /R /C:":%~1 " >nul
if %ERRORLEVEL% equ 0 (
    for /f "tokens=5" %%a in ('netstat -ano ^| findstr /R /C:":%~1 "') do (
        set PID=%%a
        taskkill /F /PID !PID! >nul 2>&1
        echo Killed process using port %~1
    )
)
goto :eof

:: Check and kill processes if needed
call :check_port 8000
call :check_port 5173

:: Start backend server
echo Starting Laravel server...
cd backend
start "Laravel Server" php artisan serve --port=8000

:: Start frontend server
echo Starting Vite dev server...
cd ../frontend
start "Vite Dev Server" npm run dev

echo Servers started successfully!
echo Backend running on http://localhost:8000
echo Frontend running on http://localhost:5173

endlocal
