NXcustom ModelingStandards                                 Last Modified: 19Dec2019

Use the ModelingStandards folder to share the UGII\modeling_standards folder multiple users.

To set up a centralized AnnotationTemplates folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\UGII\modeling_standards folder to NXcustom\NXxxxxlibrary\ModelingStandards.

2) Uncomment the following lines in the NXcustom\NXxxxxlibrary\NX_env.dat file:

# Modeling Standards Directory (Holes and Threads)
UGII_SCREW_CLEARANCE_HOLE_STANDARD_DIR=${NXCUSTOM_LIB}\ModelingStandards
UGII_THREADED_HOLE_STANDARD_DIR=${NXCUSTOM_LIB}\ModelingStandards

Modeling standards are XML files used to define hole features.
In most cases, you would not need to do this.
Any customizations should now be made to this folder.
