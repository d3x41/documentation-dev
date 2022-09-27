# Packages

**This section presents the different packages modified for Kaisen Linux and their function on the system.**

## Forked packages

### adduser

This package allows user creation via the adduser command (the binary is a perl script) and also to delete a user with the deluser command. I modified this package to modify the following configurations:

```bash
*Replace the default bash shell on zsh for user levels in file /etc/adduser.conf
*Allow the deletion of the folder associated with a deleted user (/home/userdelete) when it is deleted with the delsuer command in file /etc/deluser.conf
```

### base-files

The base-files package will simply provide the following files on the system:

```bash
*/etc/debian_version
*/etc/issue
*/etc/issue.net
*/etc/os-release
```

These files are used to identify the system version in details, such as the system version number, distribution name, code name, etc.
These files are used by the live system during the welcome message on the system (here Debian has been replaced by Kaisen Linux).
They are also used to customize GRUB thanks to the lsb_release package which, in its default configuration will read the /etc/os-release file to find out the version of the OS.   

By consequently, personalize the GRUB entries in its default configuration by the command lsb_release -i -s (information present in /etc/default/grub at the line GRUB_DISTRIBUTOR) when executing the update-grub command. The goal here was to replace Debian with Kaisen on the GRUB entries of the installed system. This package surely has many other uses, but I have not encountered them so far.  

The package has therefore been recompiled to formalize the name of the distribution on the system and customize it a little more.

### linux

The kernel has been recompiled to generate .udeb files (used by the Debian installer) as well as .deb files needed to install it via apt or dpkg.  
The Kaisen Linux kernel has its own lean configuration.
The kernel is also recompiled to disable signing modules because signing modules breaks GRUB
with Kaisen Linux configuration.

### debian-installer

This package is forked to build the installer with the custom Kaisen Linux kernel as well as our packages used by the installer (rootskel-gtk for example). It is necessary to rebuild the installer to integrate the modified packages for the installer and thus integrate them into the rolling release ISO.

### rootskel-gtk

This package has been modified because it provides the graphical configuration of the installer (theme, banners). The theme of the Kaisen Linux graphical installer is based on the original Clearlooks theme.

### apt-setup

This package allows you to configure the /etc/apt/sources.list file after installing the system.  
Since the Kaisen Linux installer is configured to request no network configuration, this package has been forked to add the Kaisen Linux repository, because by default, without internet connection (therefore no mirror selection), apt-setup will configure the Debian security repositories.  

### choose-mirror

This package configures the mirrors to be used to download packages.

### partman-auto

This package, as its name suggests, allows you to automatically partition the disk during installation.
This package was forked for three things:  
- Use of BTRFS as default file system on all partitions of the disk (except /boot if the partition is separated)
- Definition of EXT4 as the default file system for /boot if the partition is separate from / (this is the case for example during the installation of the system with LVM and cryptsetup).
- Modification of the size of the partitions allocated by partman to adapt it to the size required by Kaisen Linux and thus limit any problems that may appear on insufficient disk space (especially in case of separation of the partitions /home /var /tmp and /).

### debootstrap

This package builds and installs the base system (the packages mentioned as required). This package is forked to integrate the specific configurations of Kaisen Linux (build the base system from the distribution repository).

### desktop-base

This package provides wallpapers for the desktop, login screen, grub etc ...  
This package is forked to add the different Kaisen themes on the system to provide wallpapers as well as "alternatives" to define by default the theme to use. It is by default configured on kaisen-theme.  

### grub2

This package was forked to integrate the kaisen-grub-configuration package as a dependency. This allowed the possibility of providing a GRUB image even when the machine is encrypted and activating the plymouth theme.

### live-build

It is the official Debian tool for building system images. It was forked to add support for the "kaisen-rolling" repository.

### live-config

This package contains all live configurations. Forked to add components/0031-kaisen-password script. This script add a password for live system.

### shadow

This package was forked because the /etc/default/useradd file was modified to support /bin/zsh as the default terminal when adding a user.  
The number of users to add to the system has also been changed. Maximum 100 users can be added (by default, 58999 users can be added).

### live-installer
Forked to add 61kaisen script to launch this script after the system installation.

### plymouth
Forked to define kaisen-theme by default for Plymouth.

### partman-btrfs
Forked to create BTRFS subvolumes

### simple-cdd
Forked to add kaisen profile. The kaisen profile add a custom preseed for NETINST ISO,
and add a postinst script to exec a few actions after the installation.

### debian-cd
Forked to adding kaisen-rolling repository

### tasksel
Forked to adding Kaisen Linux tasks

### lightdm-gtk-greeter
Forked to add Kaisen Linux lightdm settings

### net-retriever
Forked to add kaisen-archive-keyring-udeb package

### neofetch
Forked to add Kaisen Linux ASCII logo

### docker.io
Forked to add a conffile to change the default storage driver will be used by Docker

### virtualbox
Forked to add a conffile to load automatically vbox modules at boot

### virtualbox-ext-pack
Forked to change the default response provided by debconf

### virtualbox-guest-additions
Forked to adapt the dependencies to the rest of the VirtualBox packages

### virtualbox-ext-pack
Forked to change default debconf 

### python-async-timeout
Forked to adapt the distributed version to the version required by GNS3

### netsniff-ng
Forked to replace ntpsec by chrony as recommanded package


## Kaisen Linux packages

### kaisen-basemenu-purge

This package removes "double" launchers. These duplicate icons appear when updating packages containing a launcher for a graphical application, for example ettercap, lftp, kismet etc ... Custom launchers have been created for the Kaisen menu to organize them by categories (monitoring, scanner etc). The custom launchers are also launched with sudo if necessary by the software.  
This package therefore removes the original launchers contained in `/usr/share/applications`

### kaisen-grub-configuration

The GRUB package has been recompiled to change the configuration of the /etc/default/grub file to add support for the default splash screen for the user on the installed system (graphical boot) and also allow in case the command lsb_release -i -s cannot be executed because the lsb-release script is not present, you can still display Kaisen and not Debian in the GRUB entries.  

The kaisen-grub-configuration package is installed automatically during system installation and automates this customization.

### kaisen-archive-keyring

This package provides the public GPG keys needed to use our secure repository with identity verification via a GPG key (used by official Debian repositories and implemented security by default).

### kaisen-menu

This package provides the custom menu. This includes the "skeleton" of the menu (allows you to organize the location of the different folders), the directories as well as the launchers of the applications. This menu is mainly used to reference the tools present in the distribution.

### kaisen-services-management

This package provides various bash scripts allowing you to easily manage additional services (added by software supplied with the distribution).  
The scripts are installed in `/opt/services`. This package coupled with the "kaisen-menu" package allows you to reference and execute directly via the menu the scripts classified by service to activate or deactivate additional services. Two activation and deactivation scripts exist for all services.

### kaisen-update

This package just provides a script to perform an apt update && apt upgrade in one command. The kaisen-update command also allows to remove the most necessary packages (dependencies no longer used).

### kaisen-build
This package contains all configurations for build Kaisen Linux ISO.

### kaisen-interfaces
All Kaisen Linux MATE Desktop Environment configurations (themes, icons etc). 

All Kaisen Linux KDE Desktop Environment configurations (themes, icons etc). 

All Kaisen Linux LXQT Desktop Environment configurations (themes, icons etc). 

All Kaisen Linux XFCE Desktop Environment configurations (themes, icons etc). 

The package kaisen-interface-common package installs the kaisen-interface-switcher command and commons packages for all interfaces.

### kaisen-skeleton

This allows you to have launchers on the desktop, the conky theme...  
This package replaces the old kaisen-*-default-profile packages which installed only the default profile of the related interface.
This package installs the kaisen-update-skel command.  

### kaisen-manpages
This package is simply an offline implementation of the entire https://kaisenlinux.org/manpages/ domain in order to access the centralized manpages of the tools built into Kaisen Linux without requiring an internet connection.

### kaisen-documentation
This package is simply an offline implementation of the entire https://kaisenlinux.org/documentation/ domain in order to access the centralized documentation without requiring an internet connection.

### kaisen-design
This package contains all themes and icons for Kaisen Linux

### kaisen-conky
Conky theme for Kaisen Linux

### kaisen-winkey-recovery
Official Kaisen Linux tool to recover OEM Windows key

### veracrypt
Tool to HDD, SSD and system disks encryption.

### woeusb
Tool to create Windows USB bootable key (written in Bash).

### woeusb-ng
Tool to create Windows USB bootable key (written in Python)

### gns3-server
Tool to network simulator (server package)

### gns3-gui
Tool to network simulator (client package)

### apfs-fuse
FUSE driver for Apple FileSystem

### ubridge
Bridge for UDP tunnels, Ethernet, TAP and VMnet interfaces

### vpcs
Simple Virtual PC Simulator

### dynamips
Router emulator for GNS3

### neo4j
Graph for everyone

### bettercap
Tool to testing the possibility of MITM attacks on Bluetooth, Wi-Fi, Ethernet and more.

### bettercap-caplets
Caplets and proxy modules.

### bettercap-ui
Bettercap's web UI

### hfsprescue
Tool specialized in recovering data from HFS + partitions.

### conkycolors
Tool developed with the aim of simplifying the configuration of the Conky theme. Some contributions have been made on the official GitHub repository of the software to facilitate its integration into Kaisen Linux.

### ctop
Tool to obtain container metrics (Docker or containerd)

### eksctl
The official CLI for Amazon EKS

### gtkhash
A cross-platform desktop utility for computing message digests or checksums

### helm
The Kubernetes package manager

### iptstate
IP Tables state

### k6
A modern load testing tool, using Go and JavaScript

### k9s
Kubernetes CLI To Manage Your Clusters In Style!

### kubernetes
Production-Grade Container Scheduling and Management

### minikube
Run Kubernetes locally

### psensor
Graphical hardware temperature monitor for Linux

### terraform
Infrastructure as code tool to provisioning cloud infrastructures.

### trivy
Vulnerabilities scanner for containers

### sentry-python
Updated tool for integrating GNS3 tools in Kaisen Linux.

### python-cpuinfo
Updated tool for integrating GNS3 tools in Kaisen Linux.

### pystatgrab
Packaged tool because is a dependency of certain features offered by Conkycolors.

### python3-getdevinfo
Repackaged to make it compatible with Kaisen Linux, is a dependency on ddrescue-gui.

### btrbk
Repackaged to fix bugs with conffiles, fix path binary on systemd service and update btrbk binary

### sslyze
SSL/TLS scanner

### tls-parser
Packaged because is a dependancy of sslyze

### nassl
Packaged because is a dependancy of sslyze

### i3-gaps
i3 fork with more features

### ddrescue
Data recovery and data protection tool

### apt-btrfs-snapshot
Tool to take snapshot when APT used

### bloodhound
Tool to check Active Directory configurations

### ddrescue-gui
Tool to add a GUI for ddrescue tool

### tfsec
Security scanner for your Terraform code

### terragrunt
Wrapper for Terraform

### notwireshark
A packet analyzer like tshark but developped in python

### kyverno
Kubernetes Native Policy Management

### vault
Hashicorp tool to for secrets management, encryption as a service, and privileged access management

### ssldump
SSL and TLS analyser

### packer
Tool for creating identical machine images for multiple platforms from a single source configuration

### kustomize
Customization of Kubernetes YAML configurations

### kind
Kubernetes IN Docker - local clusters for testing Kubernetes

### velero
Tool to backup and migrate Kubernetes applications and their persistent volumes

### sslscan
SSL/TLS scanner

### rclone
Rclone - "rsync for cloud storage"

### popeye
A Kubernetes cluster resource sanitizer

### gtkstresstest
System utility designed to stress and monitor various hardware components

### dupeguru
Tool to find duplicate files

### gox
A dead simple, no frills Go cross compile tool

### wipefreespace
WipeFreeSpace is a program which will securely wipe (clean, shred, fill, overwrite) the free space

### jmeter
Load testing and performance measurement application

### qt-fsarchiver
Program to back up and restore partitions, directories and the MBR/GPT.

### testdisk
Partition scanner and disk recovery tool, PhotoRec and qPhotoRec file recovery tools

### kubectx
Faster way to switch between clusters and namespaces in kubectl

### krew
Find and install kubectl plugins

### czkawka
Multi functional app to find duplicates, empty folders, similar images etc

### hsaudiotag
Pure-python library that reads audio file metadata

### whdd
HDD diagnostic and data recovery tool for Linux

### fred
MicrosoFt Registry EDitor

### stressapptest
Stress test application for simulating high load situations

### wxfixboot
Utility to assist with fixing the bootloader on a computer quickly

### grub-btrfs
BASH scripts and conffiles to add snapshots taken by various BTRFS snapshots tools directly in the GRUB menu

### linux-firmware
Collection of non open-source firmwares provided by Linux maintainers

## Source of packages
All the sources of the packages can be found here:

https://gitlab.com/kaisenlinux/packages

