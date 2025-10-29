@echo off

:: ------------------------ THIS FILE IS INTENDED FOR EDITING ------------------------ ::
:: ----------------------------- DO NOT EDIT NXstart.bat ----------------------------- ::

:: This file is an example of a customer script.

:: You may set variables in this file as you need.
:: Standard NXCUSTOM environment variables are available
:: to read here and incorporate into your logic.
:: If you need to override the value of a standard NXCUSTOM
:: environment variable here, it would be wise to report
:: the new value as the existing value has already been reported
:: by the time this script is executed.

:: You may create entries in the NXcustom command
:: prompt window and the NXcustom log simultaneously.
:: To create output in the command prompt window
:: and the NXcustom log file, call the :report
:: function in the NXstart script like shown below.

:: To use this script, add it to the folder Configuration\hooks\after_report_vars.

:: Important!!
:: You are allowed to use the standard "echo" command to generate output, 
:: but this will cause those echos not to appear in the logfile.
call %NXCUSTOM_START_SCRIPT% :report new_line
call %NXCUSTOM_START_SCRIPT% :report "****************************************** CUSTOMER ******************************************"
call %NXCUSTOM_START_SCRIPT% :report "Hello from customer, %USERNAME%!"
call %NXCUSTOM_START_SCRIPT% :report "**********************************************************************************************"
