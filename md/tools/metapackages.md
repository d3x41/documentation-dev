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
This metapackage installs the following Kaisen Linux metapackages:
```bash
* kaisen-network-uncategorized
* kaisen-dhcp-tools
* kaisen-dns-tools
* kaisen-ethernet-tools
* kaisen-firewall-tools
* kaisen-gns3
* kaisen-layer4-tools
* kaisen-layer3-tools
* kaisen-layer2-tools
* kaisen-network-monitoring
* kaisen-pcap-tools
* kaisen-portconsole-tools
* kaisen-network-scanners
* kaisen-tls-tools
* kaisen-vpn-tools
* kaisen-wifi-tools
```

### kaisen-sysadmin-tools
This metapackage installs the following Kaisen Linux metapackages:
```bash
* kaisen-sysadmin-uncategorized
* kaisen-remote-administration
* kaisen-backup-tools
* kaisen-ftp-clients
* kaisen-btrfs-snapshots
* kaisen-microsoft-tools
* kaisen-sysops-tools
* kaisen-virtualization-tools
```

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

### kaisen-network-uncategorized
This metapackage install all tools listed [here](tools.html#various-network-administrators-tools).

### kaisen-dhcp-tools
This metapackage install all tools listed [here](tools.html#dhcp).

### kaisen-dns-tools
This metapackage install all tools listed [here](tools.html#dns).

### kaisen-ethernet-tools
This metapackage install all tools listed [here](tools.html#ethernet).

### kaisen-firewall-tools
This metapackage install all tools listed [here](tools.html#firewall).

### kaisen-gns3
This metapackage install all tools listed [here](tools.html#gns3).

### kaisen-layer4-tools
This metapackage install all tools listed [here](tools.html#tcp-udp).

### kaisen-layer3-tools
This metapackage install all tools listed [here](tools.html#ip).

### kaisen-layer2-tools
This metapackage install all tools listed [here](tools.html#mac).

### kaisen-network-monitoring
This metapackage install all tools listed [here](tools.html#monitoring).

### kaisen-pcap-tools
This metapackage install all tools listed [here](tools.html#pcap).

### kaisen-portconsole-tools
This metapackage install all tools listed [here](tools.html#console-port).

### kaisen-network-scanners
This metapackage install all tools listed [here](tools.html#network-scanners).

### kaisen-tls-tools
This metapackage install all tools listed [here](tools.html#ssl-tls).

### kaisen-vpn-tools
This metapackage install all tools listed [here](tools.html#vpn).

### kaisen-wifi-tools
This metapackage install all tools listed [here](tools.html#wi-fi).

### kaisen-sysadmin-uncategorized
This metapackage install all tools listed [here](tools.html#sysadmin-uncategorized).

### kaisen-remote-administration
This metapackage install all tools listed [here](tools.html#remote-administration).

### kaisen-backup-tools
This metapackage install all tools listed [here](tools.html#backup-tools).

### kaisen-ftp-clients
This metapackage install all tools listed [here](tools.html#ftp).

### kaisen-btrfs-snapshots
This metapackage install all tools listed [here](tools.html#system-snapshots).

### kaisen-microsoft-tools
This metapackage install all tools listed [here](tools.html#microsoft).

### kaisen-sysops-tools
This metapackage install all tools listed [here](tools.html#sysops).

### kaisen-virtualization-tools
This metapackage install all tools listed [here](tools.html#virtualization).

### kaisen-firmwares
This metapackage install all tools listed [here](tools.html#integrated-firmwares).

### kaisen-filesystems
This metapackage install all tools listed [here](tools.html#filesystems-tools).

### kaisen-miscellaneous
This metapackage install all tools listed [here](tools.html#miscellaneous-tools).

### kaisen-cli-tools
This metapackage install all tools listed [here](tools.html#all-cli-tools).

## Remove packages installed by metapackages
All the packages installed by the metapackages listed above are configured so as not to be dependent on each other to install and can therefore be uninstalled manually without risk of breaking anything (tightly, the packages dependent on the package that is uninstalled will also be uninstalled).  
To easily uninstall a preinstalled package, for example ddrescue package, just type the command:  
```sudo apt remove --purge ddrescue```

## Source of packages
All the sources of the packages managed by us can be found :

https://gitlab.com/kaisenlinux/packages