NXcustom Showroom                                 Last Modified: 19Dec2019

Use the Showroom folder to share the ugphoto\ug_environment folder with folder multiple users.

To set up a centralized Showroom folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\ugphoto\ug_environment folder to NXcustom\NXxxxxlibrary\Showroom

2) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

UGII_USER_SHOWROOM_DATA_DIR=${NXCUSTOM_LIB}\Showroom\

The Showroom folder is just one of many folders used for photo-realist rendering that can be added to NXcustom.

In most cases, you would not need to do this.
Any customizations should now be made to this folder.
