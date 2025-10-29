NXcustom Moldwizard                                    Last Modified: 19Dec2019

Use the Moldwizard folder to share the MOLDWIZARD folder with multiple users.

To set up a centralized Moldwizard folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\MOLDWIZARD folder (except for the application folder) to NXcustom\NXxxxxlibrary\Moldwizard.

2) Also copy the downloaded unzipped Moldwizard library to NXcustom\NXxxxxlibrary\Moldwizard.

3) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

MOLDWIZARD_DIR=${NXCUSTOM_LIB}\MoldWizard

Any customizations to Moldwizard, such as pre-parts, library parts, spreadsheets, tables, etc. should now be made withinthis folder.

Notes:
There is an issue with the path to the file %UGII_BASE_DIR%\MOLDWIZARD\pre_part\mw_var.xls, which seems to be hard coded or not using the MOLDWIZARD_DIR variable.
If you are customizing this file you need to deploy the changed file to all clients.
This will be fixed in a future release, MR or MP, of NX.

If you don't have Excel installed on 64-bit Windows, you need to change the default spreadsheet application to XESS and export every change to the XS4 files through the MoldWizard Excel add-in (%UGII_BASE_DIR%\MOLDWIZARD\templates\moldwizard_add_in.xla). .
