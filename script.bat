@echo off
set text=Hello, World!

for /l %%i in (1,1,13) do (
    setlocal enabledelayedexpansion
    set char=!text:~%%i,1!
    <nul set /p=!char!
    timeout /t 0 >nul
    endlocal
)
echo.
pause
