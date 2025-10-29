NXcustom Materials Library                                 Last Modified: 30Jul2020

The material library can be commonly used for all NX versions beyond NX10

Use the Materials folder to share the UGII\materials folder with multiple users.

To set up a centralized Materials folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\UGII\materials folder to NXcustom\NXcommonlibrary\Materials.

2) Set your Customer Defaults:
   - "Gateway=>Materials/Mass==>Locations==>Site MatML Library" to the following folder:

   ${NXCUSTOM_COMMON_LIB}\Materials\
	
	or file:
	
	${NXCUSTOM_COMMON_LIB}\Materials\your_library_name.xml

Any modifications to the materials library would now be made within this folder.
