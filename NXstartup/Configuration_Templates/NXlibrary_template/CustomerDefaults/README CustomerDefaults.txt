NXcustom CustomerDefaults                                    Last Modified: 5Feb2019

The CustomerDefaults folder is a multi-purpose folder used to store and share User, Group and Site-level customer defaults for NX Native and Teamcenter Managed modes.  The TC folder has its own sub-folder structure.

The Users sub-folder contains individual username folders to store roles, part history, favorites, NX window layouts, dialog memory and User-level cutomer defaults.  Username folders are created automatically when NX is first used with NXcustom.

The location of the CustomerDefaults folder is controlled by the NX_CUSTOMER_DEFAULTS_DIR variable in the NX120common.bat file.
The location of the TC sub-folder within the CustomerDefaults folder is triggered by the TEAMCENTER_ACTIVE variable in the Tc_NX120TCIN.bat which in turn sets the NX_CUSTOMER_DEFAULTS_DIR variable in the NX120common.bat file.
