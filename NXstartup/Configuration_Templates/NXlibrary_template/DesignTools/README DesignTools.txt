NXcustom DesignTools                                    Last Modified: 19Dec2019

Use the DesignTools folder to share NX\design_tools (Checkmate, Requirement, Issue Tracking, Quickcheck) folder with multiple users.

To set up a centralized DesignTools folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\design_tools folder to NXcustom\NXxxxxlibrary\DesignTools.

2) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

NXDESIGNTOOLS_DIR=${NXCUSTOM_LIB}\DesignTools

Any customizations to Checkmate, Requirement, Issue Tracking and Quickcheck should now be made to this folder.
