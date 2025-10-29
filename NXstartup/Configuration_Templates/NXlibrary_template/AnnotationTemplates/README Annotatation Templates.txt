NXcustom AnnotationTemplates                                 Last Modified: 19Dec2019

Use the AnnotationTemplates folder to share the UGII\inh_files folder with multiple users.

To set up a centralized AnnotationTemplates folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\UGII\inh_files folder to NXcustom\NXxxxxlibrary\AnnotationTemplates.

2) Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

UGII_ANNOTATION_TEMPLATE_DIR=${NXCUSTOM_LIB}\AnnotationTemplates\

In most cases, you would not need to do this.
Any customizations should now be made to this folder.
