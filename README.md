# NXcustom - Windows Customization for Siemens NX

![Status](https://img.shields.io/badge/Status-Active-brightgreen) ![Version](https://img.shields.io/badge/Version-Latest-blue) ![NX Support](https://img.shields.io/badge/NX%20Support-2206%2B-orange)

An unofficial tool designed to centralize the deployment and maintenance of company standards and best practices for **Siemens NX CAD/CAM/CAE** software across your organization.

## 📋 Overview

**NXcustom** provides a unified framework for deploying custom NX configurations to multiple users without modifying core NX installation files. This approach safeguards your customizations during NX updates and uninstalls.

### Key Benefits

- ✅ **Centralized Configuration** - Manage company standards from one location
- ✅ **Network-Friendly** - Deploy from mapped network drives to all users
- ✅ **Version Independent** - Compatible with NX 2206 and newer
- ✅ **Non-Invasive** - No modifications to NX installation directories
- ✅ **Multi-Environment** - Support for managed and native modes
- ✅ **Easy Migration** - Simplified upgrade path for new NX versions

## 🚀 Quick Start

1. **Extract** the NXcustom archive to a network location or local drive
2. **Copy** the library template and rename it for your NX version (e.g., `NX2412library`)
3. **Run** `NXstart.bat` from the `NXstartup` folder
4. **Customize** environment variables, defaults, and resources as needed

For detailed instructions, see [Getting Started](docs/installation.md).

## 📦 What Can NXcustom Manage?

- **Customer Defaults** - Site, group, and user-level preferences
- **Environment Variables** - Centralized configuration via `.dat` files
- **Manufacturing Resources** - CAM and CMM customizations
- **Plugins** - Custom NX extensions and tools
- **Libraries & Templates** - Custom part templates and libraries
- **Ribbons & Menus** - Custom UI configurations
- **Drafting Standards** - Company-wide drawing standards

## 📚 Documentation

| Document                                                 | Purpose                                |
| -------------------------------------------------------- | -------------------------------------- |
| [Getting Started](docs/installation.md)                  | Installation and initial setup         |
| [Configuration Guide](docs/configuration.md)             | Detailed configuration options         |
| [Command Line Arguments](docs/command-line-arguments.md) | NXstart.bat usage reference            |

## 🏢 Supported Applications

NXcustom can launch and customize:

- NX (with and without Group-level customer defaults)
- CAM Express or SE CAM Pro
- NX Viewer
- Solid Edge CAM Pro
- Machine Knowledge Editor (MKE) - up to NX2212
- Power Drafting
- Teamcenter Integration for NX (TCIN)

## ⚙️ System Requirements

- **NX Version**: 2206 or newer
- **Operating System**: Windows
- **Path Requirements**: No spaces or special characters in NXcustom path
- **Network**: Optional - can be deployed locally or on network drives

## ⚡ Key Features

### Single vs. Multiple Versions
Support multiple NX versions simultaneously on the same machine with version-specific configurations.

### Presets & Defaults
Set default arguments in `NXstart.conf` and allow/restrict user overrides.

### Hooks & Custom Scripts
Execute custom scripts at specific points in the startup process without modifying core scripts.

### Environment Variable Management
Centralized control via `NX_env.dat` with automatic fallback to NX defaults.

### Teamcenter Integration
Seamless integration with Teamcenter Rich Client and Active Workspace.

## 📋 Important Notes

⚠️ **Special Characters**: Avoid special characters (`&`, `%`, `$`, `#`, `@`, `!`, `*`, brackets) in NXcustom paths.

⚠️ **Path Spaces**: While NXcustom attempts to handle spaces, it's recommended to avoid them.

⚠️ **Use Drive Letters**: If NXcustom is to be located on a shared file server, be sure users are accessing via a mapped network drive where all users have the same drive letter and path to NXcustom.

## 📞 Support & Contact

**⚠️ IMPORTANT**: This is an **unofficial tool** and has **NO official Siemens support**.

Be sure to reference documentation as a first resort for support. You may also reach out on the Siemens Community for community-based support.

## 📄 License & Disclaimer

See [DISCLAIMER.md](DISCLAIMER.md) for important legal information.

## 🤝 Contributing

Contributions and improvements are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.