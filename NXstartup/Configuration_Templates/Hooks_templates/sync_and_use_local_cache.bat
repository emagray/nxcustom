@echo off

:: This is a script which creates/updates a local cache of NXcustom
:: on a user's machine, and sets the environment to use the local
:: cache for the session being started. This could be useful in
:: situations where the network speed between the local machine
:: and the server where NXcustom is stored is poor.

:: To use this script, add it to the folder Configuration\hooks\after_conf_eval.

set NXCUSTOM_USE_LOCAL_CACHE=TRUE

setlocal EnableDelayedExpansion
if /i "!NXCUSTOM_USE_LOCAL_CACHE!" == "TRUE" (
	set NXCUSTOM_CACHE_DIR=!LOCALAPPDATA!\NXcustom

	call !NXCUSTOM_START_SCRIPT! :report "Synchronizing NXcustom local cache..."
	set NXCUSTOM_COMMON_LIB_REMOTE=!NXCUSTOM_COMMON_LIB!
	set NXCUSTOM_LIB_REMOTE=!NXCUSTOM_LIB!

	set NXCUSTOM_COMMON_LIB_LOCAL=!NXCUSTOM_CACHE_DIR!\NXcommonlibrary
	set NXCUSTOM_LIB_LOCAL=!NXCUSTOM_CACHE_DIR!\NX!NXCUSTOM_APPLICATION_VERSION!library
	if defined NXCUSTOM_LIBNAME set NXCUSTOM_LIB_LOCAL=!NXCUSTOM_LIB_LOCAL!_!NXCUSTOM_LIBNAME!

	if not exist "!NXCUSTOM_CACHE_DIR!" mkdir "!NXCUSTOM_CACHE_DIR!"
	if not exist "!NXCUSTOM_COMMON_LIB_LOCAL!" mkdir "!NXCUSTOM_COMMON_LIB_LOCAL!"
	if not exist "!NXCUSTOM_LIB_LOCAL!" mkdir "!NXCUSTOM_LIB_LOCAL!"

	robocopy "!NXCUSTOM_COMMON_LIB_REMOTE!" "!NXCUSTOM_COMMON_LIB_LOCAL!" /mir /a+:r /r:2 /w:5 /mt /log:"!NXCUSTOM_LOG_FILE:.log=_sync.log!">nul
	if errorlevel 8 (
		set NXCUSTOM_REPORT_VARS=TRUE
		call !NXCUSTOM_START_SCRIPT! :report "Failed to synchronize local cache!"
		call !NXCUSTOM_START_SCRIPT! :red_exit
	)
	robocopy "!NXCUSTOM_LIB_REMOTE!" "!NXCUSTOM_LIB_LOCAL!" /xd "!NXCUSTOM_LIB_REMOTE!\CustomerDefaults\Users" "!NXCUSTOM_LIB_REMOTE!\CustomerDefaults\TC\Users" /mir /a+:r /r:2 /w:5 /mt /log+:"!NXCUSTOM_LOG_FILE:.log=_sync.log!">nul
	if errorlevel 8 (
		set NXCUSTOM_REPORT_VARS=TRUE
		call !NXCUSTOM_START_SCRIPT! :report "Failed to synchronize local cache!"
		call !NXCUSTOM_START_SCRIPT! :red_exit
	)

	if exist "!NXCUSTOM_LIB!\CustomerDefaults\Users" (
		if not exist "!NXCUSTOM_LIB_LOCAL!\CustomerDefaults\Users" (
			mkdir "!NXCUSTOM_LIB_LOCAL!\CustomerDefaults\Users"
		)
	)
	if exist "!NXCUSTOM_LIB!\CustomerDefaults\TC\Users" (
		if not exist "!NXCUSTOM_LIB_LOCAL!\CustomerDefaults\TC\Users" (
			mkdir "!NXCUSTOM_LIB_LOCAL!\CustomerDefaults\TC\Users"
		)
	)

	set NXCUSTOM_COMMON_LIB=!NXCUSTOM_COMMON_LIB_LOCAL!
	set NXCUSTOM_LIB=!NXCUSTOM_LIB_LOCAL!
)
endlocal & (
	set NXCUSTOM_COMMON_LIB=%NXCUSTOM_COMMON_LIB%
	set NXCUSTOM_LIB=%NXCUSTOM_LIB%
)

set NXCUSTOM_USE_LOCAL_CACHE=