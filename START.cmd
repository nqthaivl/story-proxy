@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install Node.js 20 or newer from https://nodejs.org/
  pause
  exit /b 1
)
if not exist ".jwt-secret" powershell -NoProfile -Command "[Guid]::NewGuid().ToString('N') | Set-Content -NoNewline -Encoding ASCII '.jwt-secret'"
set /p JWT_SECRET=<.jwt-secret
set /p INITIAL_PASSWORD=Enter initial login password: 
if "%INITIAL_PASSWORD%"=="" (
  echo Password cannot be empty.
  pause
  exit /b 1
)
set PORT=1111
set HOSTNAME=127.0.0.1
set DATA_DIR=%~dp0data
start "Story Proxy" cmd /k "node server.js"
timeout /t 2 /nobreak >nul
start http://localhost:1111/login
endlocal