# Metapackages

**This section presents the different metapackages created to install several packages via one.**

## Kaisen Linux metapackages
### kaisen-technicians-tools
This metapackage installs the following Kaisen Linux metapackages:

```bash
* kaisen-cloning
* kaisen-data-protection
* kaisen-data-recovery
* kaisen-disks-analysis
* kaisen-hardware
* kaisen-mount
* kaisen-partitioning-erase
* kaisen-password-tools
* kaisen-pst-tools
* kaisen-temperature-analysis
* kaisen-usb-boot
* kaisen-various-analysis
* kaisen-virus-analysis
* kaisen-zip
```

### kaisen-network-tools
This metapackage install all tools listed [here](tools.html#administrators-tools).

### kaisen-sysadmins-tools
This metapackage install all tools listed [here](tools.html#administrators-tools).

### kaisen-firmwares
This metapackage install all tools listed [here](tools.html#integrated-firmwares).

### kaisen-filesystems
This metapackage install all tools listed [here](tools.html#filesystems-tools).

### kaisen-miscellaneous
This metapackage install all tools listed [here](tools.html#miscellaneous-tools).

### kaisen-disks-analysis
This metapackage install all tools listed [here](tools.html#disks-analysis).

### kaisen-virus-analysis
This metapackage install all tools listed [here](tools.html#virus-analysis).

### kaisen-various-analysis
This metapackage install all tools listed [here](tools.html#various-analysis).

### kaisen-cloning
This metapackage install all tools listed [here](tools.html#cloning).

### kaisen-zip
This metapackage install all tools listed [here](tools.html#compress/decompress).

### kaisen-usb-boot
This metapackage install all tools listed [here](tools.html#usb-boot).

### kaisen-hardware
This metapackage install all tools listed [here](tools.html#hardware).

### kaisen-mount
This metapackage install all tools listed [here](tools.html#mount).

### kaisen-pst-tools
This metapackage install all tools listed [here](tools.html#outlook-pst).

### kaisen-password-tools
This metapackage install all tools listed [here](tools.html#password-tools).

### kaisen-partitioning-erase
This metapackage install all tools listed [here](tools.html#partionning-and-delete-tools).

### kaisen-data-protection
This metapackage install all tools listed [here](tools.html#data-protection).

### kaisen-data-recovery
This metapackage install all tools listed [here](tools.html#data-recovery).

### kaisen-temperature-analysis
This metapackage install all tools listed [here](tools.html#temperature-analysis).

## Remove packages installed by metapackages
All the packages installed by the metapackages listed above are configured so as not to be dependent on each other to install and can therefore be uninstalled manually without risk of breaking anything (tightly, the packages dependent on the package that is uninstalled will also be uninstalled).
To easily uninstall a preinstalled package, for example ddrescue package, just type the command:  
```sudo apt remove --purge ddrescue```

## Source of packages
All the sources of the packages can be found :

https://gitlab.com/kaisenlinux/packages