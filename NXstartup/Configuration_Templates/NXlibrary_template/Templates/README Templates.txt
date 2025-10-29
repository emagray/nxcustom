NXcustom Templates                                 Last Modified: 19Dec2019

There are 2 methods for configuring your File New Templates.

1. Preferred method
Put your custom pax files in the UGII_TEMPLATE_DIR=${NXCUSTOM_LIB}\Templates\startup folder.
When you are having pax files with the same name as the ones in ${UGII_BASE_DIR}\UGII\Templates
folder, they will replace the those. So you are able to making use of the OOTB pax files, and
just update existing or add new pax files.
For instance, the MyTemplates tab in File New are from files in the NXcustom\NXxxxxlibrary\Templates\startup folder.

The following line in NXcustom\NXxxxxlibrary\custom_dirs.dat points to the Templates\startup folder.

$NXCUSTOM_LIB\Templates

In this case you only need to place your custom pax files there. All other default Pax fiiles are
read from several OOTB ${UGII_BASE_DIR}\xxxx\Templates folders.

2. Aternative method
Use the Templates folder to share custom template part files with multiple users.
The MyTemplates tab in File New are from files in the NXcustom\NXxxxxlibrary\Templates folder.

The following line in the NXcustom\NXxxxxlibrary\NX_env.dat file points to the Templates folder.

# UGII_TEMPLATE_DIR=${NXCUSTOM_LIB}\Templates

To activate the alternative method 2 remove the # at the start of the line above to activate this method. 
Any template customizations should be made to this folder.

Be aware that files with the same names that are found in the folder described in method 1 will overrule the files in the folder of method 2
If you only want the files in the NXcustom\NXxxxxlibrary\Templates control your file new, remove
all the other pax files from the NXcustom\NXxxxxlibrary\Templates\startup folder. or remove the 
entry from the NXcustom\NXxxxxlibrary\custom_dirs.dat file.

***********************************************************************************************************

See the NX documentation for configuring PAX files and template parts.
