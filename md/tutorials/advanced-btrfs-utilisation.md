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
APT snapshots are handled by the apt-btrfs-snapshot package. Whenever APT is used for a package update or installation, a snapshot will be automatically taken.  
If an upgrade or a package installation goes wrong it is easy to go back with these commands:
```sudo apt-btrfs-snapshot list```  
This command will list all snapshots taken by apt-btrfs-snapshot.  
The names of the snapshots look like this:  
```@apt-snapshot-2021-03-30_10:54:37```

We want to restore the snapshot with the name mentioned above. For that, we will type the command:
```sudo apt-btrfs-snapshot set-default @apt-snapshot-2021-03-30_10:54:37```  
At the next restart, all changes made to the packages will be reverted.

To delete all snapshots taken by apt-btrfs-snapshot, you must type this command as root or via sudo:
```sudo apt-btrfs-snapshot delete-older-than 0d```

To delete snapshots that are for example 3 days old or more, type this command:
```sudo apt-btrfs-snapshot delete-older-than 3d```

This can also be done via the live Kaisen.  
Your installed system is crashed, you can restore your APT snapshot by [chrooting](create-chroot.html) your installed system and running the command given above.
This is a convenient and efficient way to restore your broken system.  

This functionality can also be completely removed by fully uninstalling the package. In this case, you have to run this command:
```sudo apt remove --purge apt-btrfs-snapshot```

### Snapshots with Timeshift
Snapshots with Timeshift, software available in CLI or GUI, the snapshots can be taken much more easily that with btrfs-progs commands.  
We recommend the use of Timeshift to take and restore snapshot of your system.

## Recommendations for BTRFS
This is not enabled by default for performance reasons as well as to avoid premature wear, automated defragmentation is disabled.  
It is advisable to defragment BTRFS volumes at least every 6 months (CoW can create significant fragmentation), even on SSDs.  
Delete the snapshots first, and then type the command (in case you have BTRFS installed on the root):
```sudo btrfs filesystem defragment -rv /```