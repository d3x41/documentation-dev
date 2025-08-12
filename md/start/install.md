# Install with lives ISO

## Prerequisites
No need to have internet for installation via ISO lives.

## Modes
```bash
Kaisen Linux Install (Text mode)
Kaisen Linux Graphical Install (GUI mode)
Kaisen Linux Rescue Install (Text mode)
Kaisen Linux Rescue Install (GUI mode)
Kaisen Linux Expert Install (Text mode)
Kaisen Linux Expert Install (GUI mode)
```

Installation in text mode, not on the command line, but in reality semi-graphic.  
The GUI mode corresponds to the complete support of the graphic mode, with the support of the mouse and a graphical interface a little more advanced than the text mode.

## Description
So we have 3 different installation modes:  
- Normal
- Rescue
- Expert

The **normal mode** simply corresponds to the classic process as it is configured in Kaisen Linux thanks to the preseed file (details in the next section).  

The **rescue mode** allows you to install the system in recovery mode in the event of a problem with an initial installation or in normal mode, he will suggest the use of a shell.. You will usually never have to use it, but if necessary, it can surely help you and solve your problems.  

The **expert mode** will allow you to install your system and customize it even more than with normal mode. It will allow you for example to precisely choose the keyboard model that suits you, for example if you have a particular layout. It also allows you to select certain modules to load from the installation media. Be careful what you do, however. Forgetting an important module could compromise your installation and/or make it unstable.  

You will understand, it is a mode made to personalize its installation as well as possible, but can also be difficult to take in hand for a beginner. Use this mode only if you really know what you are doing.  
Note however that the preseed file and its configurations are taken into account in this mode.  

In the most classic cases, the normal mode will be more than enough.

## Recommendations

### Installation recommendations
To install the system, nothing could be simpler!  
You just need to follow the requested steps, and wait for the process to finish.  
I will not detail here the installation process in rescue or expert mode (these modes are reserved for advanced users), but only what the installer does.  
Here are the steps you will have to follow:  
1. Select the language of the installer, the system and the keyboard
2. Select your hostname
3. Create your user and user password (you have to put password)
4. After it will ask you to partition your disk. For less advanced users, select assisted partitioning and put the whole system in a single partition
5. The system will then install
6. If you are in UEFI mode, which will surely happen on your current machines, once the installation is complete, the GRUB will automatically install in the right place and the PC will restart with your system ready for use.

### Partitioning recommendations
On disks below 70Gb, if you use assisted partitioning on the installer do not ask to separate the partitions /home, /var and /tmp.  
The system will leave little space on the / and can be problematic.  
Here is the cause of the problem and how to fix it:  

Indeed, the root system, the / must have at least 15GB of space to be able to install the whole system. Below 70Gb, the / will be too small in size and the system unstable or may crash during installation due to lack of space to continue the operation.  

However, you will still be able to partition your disks yourself, use LVM, and encryption.  

But no matter which assisted partitioning mode you use, on small disks do not use partitioning with the 3 partitions mentioned above, you will have problems.  

I advise you to partition yourself by taking into account this constraint on the /.  

I also advise you to manage the partitioning of the disk yourself or to use LVM to facilitate the repartitioning of your disks in the future.

### Recommendations on filesystems
Kaisen Linux uses the BTRFS file system by default on automatic partitioning because a [snapshot](advanced-btrfs-utilisation.html) feature has been integrated by default and allows you to take snapshots of your system.  
If you are installing Kaisen Linux through manual partitioning, we recommend that you use BTRFS on all your partitions in order to take full advantage of the features offered by Kaisen Linux.  
You should also leave the default mountpoints options provided with the BTRFS file system selection, these options are optimized for BTRFS and for Kaisen Linux.

### Installation in BTRFS
When BTRFS is used for the / partition, the tools in the [kaisen-btrfs-snapshots](tools.html#system-snapshots) metapackage are installed by default when NETINST is used, or retained via installation from a live installer. This allows the user to install these tools only if his system configuration allows system snapshot.  

## Example of preseed file
The preseed file is a file used by the Debian installer (the default one is contained in the initrd generated by the installer, modifying it can completely alter the installer and make it absolutely unusable, even if it can be spotted without too many problems , avoid going that far).  
It is for this reason, that we integrate during the construction of the ISO a file of preseed personalized to personalize the installer, so that to modify and rework it is much simpler than to regenerate all the package managing the preseed by defect and will avoid many problems and hours of galleys.  
If we integrate a preseed file, it will be taken into account instead of the one provided by default.  
Here are the configurations of the preseed file used to customize the Kaisen Linux installer:

```bash
#Default repository information (don't include codename data, d-i figures it out from what's available in the ISO)
d-i mirror/protocol string https
d-i mirror/https/countries string FR
d-i mirror/https/hostname string deb.kaisenlinux.org
d-i mirror/https/mirror string deb.kaisenlinux.org
d-i mirror/https/directory string /
d-i mirror/suite string kaisen-rolling
d-i mirror/udeb/suite string kaisen-rolling

#Force define kaisenlinux as default hostname (priority on DHCP)
d-i netcfg/hostname string kaisenlinux
d-i netcfg/get_hostname string kaisenlinux
d-i netcfg/get_hostname seen false

#Disable missing firmware message during network configuration
d-i hw-detect/load_firmware boolean false

#Disable security, updates and backports
d-i apt-setup/services-select multiselect

#Enable contrib, non-free and non-free-firmware
d-i apt-setup/non-free-firmware boolean true
d-i apt-setup/non-free boolean true
d-i apt-setup/contrib boolean true

#Disable CDROM entries after install
d-i apt-setup/disable-cdrom-entries boolean true

#Include packages in the base system
d-i base-installer/includes string bash-completion zsh ca-certificates kaisen-archive-keyring

#Upgrade installed packages (debootstrap)
d-i pkgsel/upgrade select full-upgrade

#Disable question about automatic security updates
d-i pkgsel/update-policy select none

#Disable popularity-contest
popularity-contest popularity-contest/participate boolean false

#Disable question about extra media
d-i apt-setup/cdrom/set-first boolean false

#Install default linux-image-amd64 kernel metapackage
d-i base-installer/kernel/image string linux-image-amd64

#Do not ask to create a root password to force the creation of a user with reduced privileges
d-i passwd/root-login boolean false

#Controls whether or not the hardware clock is set to UTC.
d-i clock-setup/utc boolean false

#Controls whether to use NTP to set the clock during the install
d-i clock-setup/ntp boolean true

#NTP server to use
d-i clock-setup/ntp-server string 0.debian.pool.ntp.org

#Automatically enable force UEFI installation
d-i partman-efi/non_efi_system boolean true

#Define default filesystem
d-i partman/default_filesystem string btrfs

#Do not activate volume wipe during encryption
d-i partman-auto-crypto/erase_disks boolean false

#Disable warning when no swap partition was created
d-i partman-basicfilesystems/no_swap boolean false

#Activate eatmydata to reduce space disk used and download simple-cdd profiles
d-i preseed/early_command string anna-install eatmydata-udeb simple-cdd-profiles

#Select kaisen profile
simple-cdd simple-cdd/profiles multiselect kaisen

#Automatically use APT mirror
d-i apt-setup/use_mirror boolean true

#Force the ejection of the CDROM after the installation
d-i cdrom-detect/eject boolean true

#Delete the message at end installation and automatic reboot after finish install
d-i finish-install/reboot_in_progress note

#Execute at command after system installation
#d-i preseed/late_command string in-target sh -c ''

#Packages configurations
iptables-persistent iptables-persistent/autosave_v4 boolean false
iptables-persistent iptables-persistent/autosave_v6 boolean false
wireshark-common wireshark-common/install-setuid boolean false
krb5-config krb5-config/default_realm string
krb5-config krb5-config/kerberos_servers string
krb5-config krb5-config/admin_server string
macchanger macchanger/automatically_run boolean false
virtualbox-ext-pack virtualbox-ext-pack/license boolean true
iperf3 iperf3/start_daemon boolean false
encfs encfs/security-information boolean true
encfs encfs/security-information seen true
zfs-dkms zfs-dkms/note-incompatible-licenses boolean true
zfs-dkms zfs-dkms/note-incompatible-licenses seen true
```  

It is thanks to this file that the Debian installer is customized and for this reason that certain processes, such as password request for root, network configuration and others do not exist on the ISO. The purpose of this file is to automate certain tasks (we can completely automate the installation using this file), as well as to customize the installer according to our needs.  
The choice not to leave to the installer, the choice to create a password for root is because using the default root account is highly discouraged as well as the custom terminal, although available on root by typing zsh in the terminal (bash was left by default to allow chroot), is by default available for users without privileges.
