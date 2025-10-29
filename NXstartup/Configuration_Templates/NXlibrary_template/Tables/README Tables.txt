NXcustom Tables                                 Last Modified: 19Dec2019

Use the Tables folder to share the UGII\table_files folder with multiple users.

To set up a centralized Tables folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\UGII\table_files folder to NXcustom\NXxxxxlibrary\Tables

2) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

UGII_TABLE_TEMPLATES=${NXCUSTOM_LIB}\Tables

Any customizations should now be made to this folder.
