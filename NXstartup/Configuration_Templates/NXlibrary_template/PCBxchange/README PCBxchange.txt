NXcustom PCBxchange Library                                 Last Modified: 19Dec2019

Use the PCBxchance folder to share 3D printed circuit board library components with multiple users.

To set up a centralized centralized PCBxchange library folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\UGPCBXCHANGE folder to NXcustom\NXxxxxlibrary\PCBxchange.

2) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

MAYA_PCB_DIR=${NXCUSTOM_LIB}\PCBxchange

In most cases, you would not need to do this.
Any customizations should now be made to this folder.
