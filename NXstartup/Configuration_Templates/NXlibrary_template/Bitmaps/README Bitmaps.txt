NXcustom Bitmaps                                    Last Modified: 9Jul2024

Use the Bitmaps folder to enable NX to access custom bitmaps that you would like to use for any function/application that uses them.

In the NXcustom\NXxxxxlibrary\NX_env.dat file you will find a section that defines the UGII_BITMAP_PATH variable.

Something like:

		# Default bitmap path definition.
		# Change below if you want to add more folders separated by a semicolon ";"
		UGII_BITMAP_PATH=${NXCUSTOM_LIB}\Bitmaps;${UGII_CAM_TEMPLATE_PART_DIR}bitmaps

You are free to add more folders to it, as long as they are seperated by a semicolon ";".
