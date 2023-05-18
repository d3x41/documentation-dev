# Installation with NETINST ISO

## Prerequisites
Internet is mandatory for the installation via ISO netinst. Even if the system can be installed without internet, you will have a limited and certainly not fully functional installation.

## Modes
Graphical install: Graphical installer with mouse support.  
Install: Semi-graphic installer, comparable to a ncurses interface.    

In the **advanced options** menu:  

The **rescue mode** allows you to install the system in recovery mode in the event of a problem with an initial installation or in normal mode, he will suggest the use of a shell.You will usually never have to use it, but if necessary, it can surely help you and solve your problems.  

The **expert mode** will allow you to install your system and customize it even more than with normal mode. It will allow you for example to precisely choose the keyboard model that suits you, for example if you have a particular layout. It also allows you to select certain modules to load from the installation media. Be careful what you do, however. Forgetting an important module could compromise your installation and/or make it unstable.  

You will understand, it is a mode made to personalize its installation as well as possible, but can also be difficult to take in hand for a beginner. Use this mode only if you really know what you are doing.  
Note however that the preseed file and its configurations are taken into account in this mode.  

In the most classic cases, the normal mode will be more than enough.  

The **automated install** mode is not officially supported on Kaisen, it is present because it is provided by default by the installer but the automated installation is disabled.

## How the netinst installer works
The basic system will be installed after the internet has been configured.  
Then the tasksel software will be launched. This software will allow you to install a series of software of your choice in the form of a menu. This predefined set of proposed software are the packages and metapackages developed for Kaisen Linux.  

Here is this menu:  

4 graphic interfaces are currently proposed.
```
- MATE
- KDE
- XFCE
- LXQT
```
You must choose one of the 4. It is possible, but not recommended to install two or more simultaneously.  
If you want to change the GUI, you will have to use the kaisen-interface-switcher script.  

Network tools:    

The entry **Install all network tools** will install this [metapackage](metapackages.html#kaisen-network-tools). Select this option if you want to install all network tools. This will avoid selecting all categories of network metapackages.  
The entry **Install only ethernet tools** will install only these [tools](tools.html#ethernet)  
The entry **Install only GNS3 tools** will install only these [tools](tools.html#gns3)  
The entry **Install only OSI layer 2 tools** will install only these [tools](tools.html#mac)  
The entry **Install only OSI layer 3 tools** will install only these [tools](tools.html#ip)  
The entry **Install only OSI layer 4 tools** will install only these [tools](tools.html#tcp-udp)  
The entry **Install only network monitoring tools** will install only these [tools](tools.html#monitoring)  
The entry **Install only network PCAP tools** will install only these [tools](tools.html#pcap)  
The entry **Install only console port tools** will install only these [tools](tools.html#console-port)  
The entry **Install only network scanners tools** will install only these [tools](tools.html#network-scanners)  
The entry **Install only VPN clients** will install only these [tools](tools.html#vpn)  
The entry **Install only Wi-Fi tools** will install only these [tools](tools.html#wi-fi)  
The entry **Install only network miscellaneous** will install only these [tools](tools.html#various-network-administrators-tools)  

Sysadmin tools:    

The entry **Install all sysadmin tools** will install this [metapackage](metapackages.html#kaisen-sysadmin-tools). Select this option if you want to install all sysadmin tools. This will avoid selecting all categories of sysadmin metapackages.  
The entry **Install only backup tools** will install only these [tools](tools.html#backup-tools)   
The entry **Install only DHCP tools** will install only these [tools](tools.html#dhcp)  
The entry **Install only DNS tools** will install only these [tools](tools.html#dns)  
The entry **Install only FTP clients** will install only these [tools](tools.html#ftp)  
The entry **Install only Microsoft AD analyze** will install only these [tools](tools.html#microsoft)  
The entry **Install only remote administration tools** will install only these [tools](tools.html#remote-administration)  
The entry **Install only SSL/TLS tools** will install only these [tools](tools.html#ssl-tls)  
The entry **Install only virtualization tools** will install only these [tools](tools.html#virtualization)  
The entry **Install only firewalling tools** will install only these [tools](tools.html#firewalling)  
The entry **Install only AppArmor profiles and tools** will install only these [tools](tools.html#apparmor-tools-and-profiles)  
The entry **Install only databases clients tools** will install only these [tools](tools.html#databases-clients)  
The entry **Install only sysadmin miscellaneous tools** will install only these [tools](tools.html#various-system-administrators-tools)  

Technicians tools:  

The entry **Install all technicians tools** will install this [metapackage](metapackages.html#kaisen-technicians-tools). Select this option if you want to install all technicians tools. This will avoid selecting all categories of technicians metapackages.  
The entry **Install only partitioning and erasing tools** will install only these [tools](tools.html#partitioning-and-delete-tools)  
The entry **Install only password tools** will install only these [tools](tools.html#password-tools)  
The entry **Install only PST tools** will install only these [tools](tools.html#outlook-pst)  
The entry **Install only temperature tools** will install only these [tools](tools.html#temperature-analysis)  
The entry **Install only make bootable USB tools** will install only these [tools](tools.html#usb-boot)  
The entry **Install only virus analysis tools** will install only these [tools](tools.html#virus-analysis)  
The entry **Install only cloning tools** will install only these [tools](tools.html#cloning)  
The entry **Install only data protection tools** will install only these [tools](tools.html#data-protection)  
The entry **Install only data recovery tools** will install only these [tools](tools.html#data-recovery)  
The entry **Install only disks analysis tools** will install only these [tools](tools.html#disks-analysis)  
The entry **Install only hardware tools** will install only these [tools](tools.html#hardware)  

The entry **Install DevOps and Cloud tools** will install only these [tools](tools.html#sysops-tools)  

The entry **Install miscellaneous tools** will install only these [tools](tools.html#miscellaneous-tools)  

The entry **Install scripts and the menu services** will install only [this](menu.html#services). You should install this to more easily manage the pre-installed services, via automated scripts, if you don't install it, it won't affect the use of Kaisen.  

The entry **Install the kaisen-update command** will install only these [tools](packages.html#kaisen-update)  

The entry **Adding more filesystems support** will install only these [tools](tools.html#filesystems-tools) You should combine this metapackage with tools for technicians, e.g. disk analysis tools, file system mounting. This will give you more software support.  

The entry **Adding more firmwares support** will install only these [tools](tools.html#integrated-firmwares). You will probably not need to install so many drivers on your installation.  
They are installed by default on lives in order to extend hardware support to as many computers as possible. If you don't know which driver to install to get wifi, video driver or anything else, installing this metapackage will solve this problem. Do not install it if you only want to install what is necessary for your computer.  

The entry **Install offline manpages** will install only this [tool](packages.html#kaisen-manpages)  

The entry **Install offline documentation** will install only this [tool](packages.html#kaisen-documentation)

The entry **Install Conky** will install only this [tool](packages.html#kaisen-conky)

The entry **Install Exegol and its documentation** will install only this [tool](tools.html#exegol)