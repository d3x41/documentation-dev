# Advanced BTRFS utilisation

## Subvolumes

### Explanations
A subvolume is a branch of the file system that behaves like a file subsystem. it appears as a directory.  
It is thanks to these sub-volumes that the creation of snapshots of a directory is possible.

### Manual creation
To manually create subvolumes to use the snapshost system, we will proceed like this.  
Here, the subvolumes that will be created are the same as those created by installing Kaisen Linux with an ISO of revision 1.6.  

Subvolumes can be created using commands installed via the btrfs-progs package. This package is installed by default in Kaisen Linux if the kaisen-filesystems package is installed, or if BTRFS is the file system used when installing the system.  

This command can be used to create BTRFS subvolume:  
```sudo btrfs subvolume create subvolume_name```

### Deletion

To delete a BTRFS subvolume, can you proceed like this:  
```sudo btrfs subvolume delete subvolume_name```

## Snapshots

### Explanations
A snapshot, or restore point, is an image of the file system or one of its subvolumes that you back up at a specific point in time, so that you can access or restore it later. The main goal is to restore a system that has become unstable.

Once created, a snapshot behaves like an ordinary folder on your file system: you can copy it, move it to external media, rename it...

### Snapshots with BTRFS commands
To take a snapshot of the entire system from the command line:  
```sudo btrfs subvolume snapshot / /opt/snapshot20210330```  

This command will take a snaphsot from the test subvolume (directory). This frozen version of your directory will be accessible through the "/opt/snapshot20210330" directory. The modifications made in each of the two directories are independent. The filesystem manages the changes so that they are transparent to the user (with ext4, it would have been necessary to create a copy of the directory, which would have occupied double the disk space. A snapshot does not consume any additional disk space).  

### Restore snapshot
To restore the snapshot taken previously, the following command can be used:  
```sudo btrfs subvolume get-default /```  

### APT snapshots
Before the 2.2RC2 release, snapshots taken by the apt-btrfs-snapshot software. This tool has been dropped because it causes a lot of bugs with systemd (it modified the /etc/fstab file). Also, restored snapshots couldn't be deleted.  

Since the 2.2RC2 release, APT snapshots are handled by the kaisen-timeshift-apt package to fix problems with the previous package used for that (apt-btrfs-snapshot). This tool is the in-house tool developed by the Kaisen Linux team and it's combined with Timeshift to automatically take APT snapshots. The commands to delete or restore a snapshot taken by kaisen-timeshift-apt are the same as those of Timeshift.  

Whenever APT is used for a package update or installation, a snapshot will be automatically taken.  

If an upgrade or a package installation goes wrong it is easy to go back with these commands:  
```sudo timeshift --list```  

This command will list all snapshots taken by apt-btrfs-snapshot.  
The names of the snapshots look like this:  
```2022-10-23_22-36-46```

We want to restore the snapshot with the name mentioned above. For that, we will type the command:   
```sudo timeshift --restore --snapshot 2022-10-23_22-36-46```  
At the next restart, all changes made to the packages will be reverted.

To delete all snapshots taken by apt-btrfs-snapshot, you must type this command as root or via sudo:  
```sudo timeshift --delete-all```

To delete a specific snapshots with its name, type this command:  
```sudo timeshift --delete --snapshot 2022-10-23_22-36-46```

This functionality can also be completely removed by fully uninstalling the package. In this case, you have to run this command:  
```sudo apt remove --purge kaisen-timeshift-apt```  

Remember to regularly delete your BTRFS snapshots taken with apt-btrfs-snapshot, they can take up considerable space on your storage device.

### The grub-btrfs package
Since the 2.2RC2 release, the grub-btrfs package is included by default when Kaisen uses BTRFS as default filesystem. The grub-btrfs package allows to boot on a previously created snapshot directly from the GRUB menu! All taken snapshots will can be restored from the started snapshot!  

To restore a snapshot, you should use the BTRFS commands or the commands or the commands of the software used to take the snapshots (Timeshift for example, also works with snapshots taken automatically by kaisen-timeshift-apt).  

On Kaisen Linux, the focus has been on Timeshift to automate the addition to the GRUB menu of BTRFS snapshots taken or deleted with Timeshift (also works with those taken with kaisen-timeshift-apt).  

All snapshots that are taken or deleted will be automatically added to the GRUB menu via a systemd service within 15 seconds! You don't have to do anything except manage your system as you wish!  

We therefore advise you to use Timeshift to create and manage your BTRFS snapshots.

### Snapshots with Timeshift
Snapshots with Timeshift, software available in CLI or GUI, the snapshots can be taken much more easily that with btrfs-progs commands.  
We recommend the use of Timeshift to take and restore snapshot of your system.  

Remember to regularly delete your BTRFS snapshots taken with Timeshift, they can take up considerable space on your storage device.  

The timeshift manpage is available on Kaisen as well as all related documentation.

### Restore snapshots from a chrooted environment
In case of a major crash (if your system does not boot), if the grub-btrfs software does not display anything, GRUB is not accessible, or an error has occurred, you can potentially recover your system from a [chrooted environment](create-chroot.html). There are many potential causes. In case of difficulties, the Kaisen Linux discussion groups or the official community forum can help you.

## Recommendations for BTRFS
This is not enabled by default for performance reasons as well as to avoid premature wear, automated defragmentation is disabled.  
It is advisable to defragment BTRFS volumes at least every 6 months (CoW can create significant fragmentation), even on SSDs.  
Delete the snapshots first, and then type the command (in case you have BTRFS installed on the root):  
```sudo btrfs filesystem defragment -rv /```  

You can also use the btrfs-balance-least-used command to rebalance unbalanced pieces of data. Running this command can potentially allow for the recovery of space on the disk.    

Example for the / partition :  
```btrfs-balance-least-used /```

## Docker with BTRFS
Docker on Kaisen Linux has been packaged to support the use of BTRFS. For this, Docker has been packaged to use the overlay2 driver as default driver, even if BTRFS is the filesystem used. So you can safely use Docker with BTRFS!