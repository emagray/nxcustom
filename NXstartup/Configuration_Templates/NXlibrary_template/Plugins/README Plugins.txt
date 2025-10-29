NXcustom Plugins                                 Last Modified: 2024.01.02

Use the Plugins folder to share packaged plugins with multiple users. Each folder inside the Plugins folder respresents an individual plugin containing its own "application" and "startup" folders.

The update_plugins.bat script will regenerate the plugins_custom_dirs.dat and plugins_env.dat files when run. All folders found in the Plugins folder will be listed in the plugins_custom_dirs.dat file, except those beginning with an underscore.

All folders to be listed in the plugins_custom_dirs.dat file which contain files matching the name "*env.dat" will have those respective files included in the plugins_env.dat file.

To disable a plugin in the Plugins folder, simply rename it to begin with an underscore and run the update_plugins.bat script. The change will take effect in the next NX session.

To enable a plugin in the Plugins folder, simply rename it so it does not begin with an underscore and run the update_plugins.bat script. The change will take effect in the next NX session.