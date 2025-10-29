NXcustom Routing Library                                 Last Modified: 19Dec2019

Use the Routing folder to share the Electrical and Mechanical Routing library folders with multiple users.

To set up a centralized Routing folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\ROUTING folder to NXcustom\NXxxxxlibrary\Routing

2) Uncomment/comment the following lines in the NXcustom\NXxxxxlibrary\NX_env.dat file:

# ROUTING_APP_DIR=${NXCUSTOM_LIB}\Routing

Any customizations should now be made to this folder.
