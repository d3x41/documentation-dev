# Live informations

## Default credentials
- Login: kaisen
- Password: kaisen

## Live languages
- You can using **French** with **azerty** keyboard. This language can be chosen by the entry **Kaisen Linux Rolling Live (Français)** => once you have started on your DVD or bootable USB key.
- You can using **English** with **qwerty** (US disposition) keyboard. This language can be chosen by the entry **Kaisen Linux Rolling Live (English)** => once you have started on your DVD or bootable USB key.
- You can using **Spain** with qwerty (Spain disposition) keyboard. This language can be chosen by the entry **Kaisen Linux Rolling Live (Espanol)** => once you have started on your DVD or bootable USB key.
- You can using **Portugal** with qwerty (Portugal disposition). This language can be chosen by the entry **Kaisen Linux Rolling Live (Portugues)** => once you have started on your DVD or bootable USB key.
- You can using **Italian** with qwerty (Italian disposition). This language can be chosen by the entry **Kaisen Linux Rolling Live (Italiano)** => once you have started on your DVD or bootable USB key.
- You can using **Deutsch** with **qwertz** (Deutsch disposition). This language can be chosen by the entry **Kaisen Linux Rolling Live (Deutsche)** => once you have started on your DVD or bootable USB key.  

If your keyboard is neither azerty, qwerty or qwertz of the variants mentioned above, select the language on which to start the live and once on the live, in the terminal, type the command `setxkbmap your_keyboard`
For example, for the russian keyboard, the command will be `setxkbmap ru`

## Live options
Kaisen Linux live has several options:

- Default
- Failsafe mode
- Persistence
- Encrypted persistence
- Forensic mode
- Charging in RAM
- Charging in RAM (failsafe)
- Charging in RAM (forensic)

```bash
*Default: Simple start in live mode without special options.
*Failsafe mode: Repair mode and disables certain features such as multi-threading and direct access to RAM. 
Facilitates the detection of problems.
*Persistence: Mode allowing to keep this data on different live sessions (by default, the live erases all the data of the session once the computer is shut down or restarted). CAUTION: This mode can only be used with a bootable USB key with a partition dedicated to persistence. More details in the section dedicated to the use of the persistent mode.
*Encrypted persistence: Exactly the same function as persistence mode, with the only difference, the partition with persistent data will be secured using cryptsetup and luks.
*Forensic mode: Mode allowing to start the system by bringing certain security there like deactivation of the assembly by default of the equipment connected in USB and the deactivation of graphics cards AMD and Nvidia. The swap 
(partition used by the system to compensate for a possible lack of RAM) is also disabled with this mode.
*Charging in RAM: Mode allowing to fully load the squashfs in the RAM memory, allowing to use the live system without keeping the USB key connected. Useful for computers with few USB ports. 8Gb of RAM is recommended to use this mode. The system loaded in RAM consumes 3.5GB to 4GB.
*Charging in RAM (failsafe): Allows like failsafe mode and loaded in RAM, to fully load the system in RAM memory and to deactivate multi-threading support as well as direct access to RAM memory.
*Charging in RAM (forensic): This mode allows to load the whole system in RAM, but by activating the functionalities provided with the classic forensic mode.
```

All these options are available on the six languages ​​provided for the live system.

### Default mode
This mode requires nothing more than typing the enter key on its keyboard to be used. Very useful mode for testing the system, as well as for performing some quick tasks such as disk formatting or disk performance analysis.

### Failsafe mode
This mode is often used to diagnose problems related to its hardware or to deactivate the support of certain functions which can conflict with certain uses such as multi-threading, management of APM (Advanced Power Management) etc. Do not use this mode if you do not need it. Using it will not cause any problems on your machine or live system, but disables certain functions that may be useful.

### Forensic mode
This mode allows you to start on a live system by deactivating additional graphics cards.
Automatic mounting of disks / partitions and swap are disabled. The purpose of this mode is to be able to more easily diagnose problems related to graphics cards (driver or screen problems related to faulty hardware) and to be able to more easily control the mounting of discs on the system. The automatic deactivation of device mounting makes it possible, for example, to limit the extent of damage that can be caused by malware. This feature is useful for performing disk and / or malware analysis on discs whose origin or content is potentially dangerous.

### Persistence mode
This mode allows you to keep this data between each live session. However, this mode must be configured beforehand. Persistence mode makes it possible, among other things, to keep the modification of its graphic parameters (wallpaper, theme, policies, etc.), to keep the packages updated, to keep the data entered by the user, etc.

### Encrypted persistence
This mode allows you to keep this data between each live session. However, this mode needs to be configured beforehand. The difference with the previous persistent mode, is that persistent data is encrypted, which increases the security, confidentiality and integrity of persistent data. This mode should be used as a priority and is recommended over normal persistent mode, for your safety.

### Charging in RAM
This mode requires nothing more than typing the enter key on its keyboard to be used. Very useful mode to accelerate the speed of the live system on recent machines, because the system is fully loaded in RAM and therefore faster than a USB port. Useful also to save the USB ports of the machine in case there is not much to see one. Once this mode is used and you have access to the desktop, you can unplug the USB key and fully use the system.

### Charging in RAM with failsafe mode
This mode also allows you to fully load the system into RAM, but by disabling certain functions such as APM and SMP (like classic failsafe mode). Only use this mode if you have the utility and know why to use it. Using it will not cause any problems on your machine or live system, but disables certain functions that may be useful.

### Charging in RAM with forensic mode
The forensic mode allows you to automatically deactivate Nvidia graphics cards as well as AMD cards. Storage devices are not mounted automatically. This mode allows you to benefit from all the advantages of this mode while keeping a free USB port on your computer.

## Create live USB key with persistence
### **Prerequisite**  

WARNING: A USB flash drive configured to support live persistent will not work with Apple hardware, probably due to their specific BIOS.

We recommend that you have at least a 64GB USB drive to take full advantage of this feature. 
Check with the command `sudo fdisk -l` what your key is called. Here we will assume that our USB stick is `/dev/sdb`.

### USB key with persistence creation
This documentation was made with ISO SR but also works with KDE, LXQT, MATE and XFCE.  
Make sure you are in the same folder as the ISO to do all this!!! The dd command will erase your entire device, make sure you have backed up the important content.  

- Create a bootable Kaisen USB drive with the following command:

```bash
sudo dd if=kaisenlinuxrolling2.2-amd64-SR.iso of=/dev/sdb bs=4M status=progress
```
Normally two partitions were created by dd. You can check this with the sudo fdisk -l command. You need to create a third to add persistence to it.

- To do this, type the following commands (always in the same folder where the ISO is):

```bash
end=50GiB (if key is 64GiB, for security we will put the key ending at 50GiB plus the size of the ISO so 4GiB)
read start _ <<< $(du -bcm kaisenlinuxrolling2.2-amd64-SR.iso | tail -1); echo $start
sudo parted /dev/sdb mkpart primary ${start}MiB $end
```

You should now have 3 partitions on your `/dev/sdb` device.

- Then do this for create filesystems and partition label:  
The `mkfs.ext4` command below will ask a question (on the size of the blocks). Just press enter to use the default settings (not affected here).

```bash
sudo mkfs.ext4 -L persistence /dev/sdb3
sudo e2label /dev/sdb3 persistence
```
To take into account this new persistence partition, we should have a file named persistence.conf at the root of this partition with in this file marked: `/ union`

- We are going to proceed like this:

```bash
sudo mkdir -p /mnt/persistence
sudo mount /dev/sdb3 /mnt/persistence
echo "/ union" | sudo tee /mnt/persistence/persistence.conf
sudo umount /mnt/persistence
```

**Your key is now ready!**

Restart a live Kaisen with the persistence option enabled. To test that the persistence is functional, for example change the theme of the graphical interface then restart your live session by always choosing "persistence". If the theme you modified has been kept instead of the default one, the persistence is functional.

## Create live USB key with encrypted persistence
### **Prerequisite**
WARNING: A USB flash drive configured to support live persistent will not work with Apple hardware, probably due to their specific BIOS.

We recommend that you have at least a 64GB USB drive to take full advantage of this feature. 
Check with the command `sudo fdisk -l` what your key is called. Here we will assume that our USB stick is `/dev/sdb`.

### USB key with encrypted persistence creation
This documentation was made with ISO SR but also works with KDE, LXQT, MATE and XFCE.  
Make sure you are in the same folder as the ISO to do all this!!! The dd command will erase your entire device, make sure you have backed up the important content.  

- Create a bootable Kaisen USB drive with the following command:

```bash
sudo dd if=kaisenlinuxrolling2.2-amd64-SR.iso of=/dev/sdb bs=4M status=progress
```

Normally two partitions were created by dd. You can check this with the `sudo fdisk -l` command. You need to create a third to add persistence to it.

- To do this, type the following commands (always in the same folder where the ISO is):

```bash
end=50GiB (if key is 64GiB, for security we will put the key ending at 50GiB plus the size of the ISO so 4GiB)
read start _ <<< $(du -bcm kaisenlinuxrolling2.2-amd64-SR.iso | tail -1); echo $start
sudo parted /dev/sdb mkpart primary ${start}MiB $end
```

You should now have 3 partitions on your `/dev/sdb` device.  
WARNING: do not forget the passphrase to unlock the partition, otherwise you will have to completely redo your key and your data cannot be recovered. You have been warned.

```bash
sudo cryptsetup --verbose --verify-passphrase luksFormat /dev/sdb3
sudo cryptsetup luksOpen /dev/sdb3 kaisen-usb-persistent
```

Then do this for create filesystems and partition label:
The `mkfs.ext4` command below will ask a question (on the size of the blocks). Just press enter to use the default settings (not affected here).

```bash
sudo mkfs.ext4 -L persistence /dev/mapper/kaisen-usb-persistent
sudo e2label /dev/mapper/kaisen-usb-persistent persistence
```
To take into account this new persistence partition, we should have a file named persistence.conf at the root of this partition with in this file marked: `/ union`

- We are going to proceed like this:

```bash
sudo mkdir -p /mnt/kaisen-usb-persistent
sudo mount /dev/mapper/kaisen-usb-persistent /mnt/kaisen-usb-persistent
echo "/ union" | sudo tee /mnt/kaisen-usb-persistent/persistence.conf
sudo umount /dev/mapper/kaisen-usb-persistent
```

- Let's close the encrypted channel:

```bash
sudo cryptsetup luksClose /dev/mapper/kaisen-usb-persistent
```
**Your key is now ready!**

Restart a live Kaisen with the encrypted persistence option enabled. To test that the persistence is functional, for example change the theme of the graphical interface then restart your live session by always choosing "encrypted persistence".  If the theme you modified has been kept instead of the default one, encrypted persistence is functional.  
Caution, the keyboard will be in QWERTY.