NXcustom Visual Reporting                                    Last Modified: 19Dec2019

Use the VisualReporting folder to share the NXREPORTS\visual_reporting folder with multiple users.

To set up a centralized Visual Reporting folder in NXcustom, do the following:

1) Copy the contents of the ...\NX\NXREPORTS\visual_reporting folder to NXcustom\NXxxxxlibrary\VisualReporting.
Uncomment the following line in the NXcustom\NXxxxxlibrary\NX_env.dat file:

# NXVISUALREPORTING_DIR=${NXCUSTOM_LIB}\VisualReporting

2) The Visual Reporting folder location is controlled by Customer Defaults.
You can access the Customer Defaults from File > Utilities> Customer Defaults > Gateway > Visual Reporting > Reports tab.

Set the Windows Visual Reporting Definition Directory to the following:

%NXCUSTOM_LIB%\VisualReporting\definitions\english\ (or other language)

Browsing to the folder will hard code the path, so use %NXCUSTOM_DIR% if you always want it to look in the NXcustom folder. You will need to point to a folder other than english if you want your proper localization.

Side note:
Other products under the HD3D umbrella include Check-Mate, Product Template Studio and Requirements Validation.
