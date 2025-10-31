@echo off

cd /d %~dp0
cd /d ..\..
set NXCUSTOM_DIR=%cd%

if exist download.zip del download.zip
if exist nxcustom-main rmdir /s /q nxcustom-main

curl -L -o download.zip https://github.com/emagray/nxcustom/archive/refs/heads/main.zip 2>nul
if errorlevel 1 (
	color 4f
	echo Failed to download!
	pause
	exit /b
)

tar -xf download.zip 2>nul
if errorlevel 1 (
	color 4f
	echo Failed to extract download!
	pause
	if exist download.zip del download.zip
	exit /b
)

if exist "%NXCUSTOM_DIR%\NXstartup_latest" (rmdir /s /q "%NXCUSTOM_DIR%\NXstartup_latest")
ren ".\nxcustom-main\NXstartup" "NXstartup_latest"
move ".\nxcustom-main\NXstartup_latest" "%NXCUSTOM_DIR%" >nul
if exist download.zip (del download.zip)
if exist nxcustom-main (rmdir /s /q nxcustom-main)

echo The latest NXcustom files have been downloaded to NXstartup_latest!
echo:
echo To complete the NXcustom update, backup (or rename) your NXstartup folder,
echo then rename the NXstartup_latest folder to NXstartup.
echo:
pause
