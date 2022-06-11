# Windows USB key

**How to create a USB bootable key for Windows system**

## Why no tool planned for?
The first beta versions of Kaisen Linux included the WoeUSB tool which created a bootable Windows USB key. However, as mentioned on the blog, version 20200206 removes WoeUSB because it caused the impossibility of correctly installing GRUB in UEFI because WoeUSB requires as dependency grub-pc and the latter conflicts with grub-efi therefore caused the error when installing GRUB.

## This method
The method that will be presented here, will be the easiest way to create a bootable Windows USB key.  
However, there are 2 prerequisites.  

```bash
*A USB key of 8GB minimum formatted as ntfs
*Windows 10 ISO
```

To format your USB key from a GNU/Linux system, I refer you to this tutorial, very simple and clear, on the tool Gparted
Kaisen Linux provides the Engrapa archive manager allowing to extract also .iso files in a folder.  

To do this, right click on your Windows 10 ISO, and do 'Extract here' and you will have a folder with the same name as the Windows 10 ISO.  

Open this folder and copy and paste all the content of the latter on your ntfs formatted USB key.  

Once the process is complete, you should be able to start on your USB drive.  

## WoeUSB method
The WoeUSB tool integrated by default in the SR version of Kaisen Linux and which can be installed via APT on the installed system, allows to install a Windows bootable USB key with UEFI and classic BIOS support. 
In this example, the USB stick is /dev/sdb as device file. To use WoeUSB to create a bootable key:
```woeusb --device Windows10_x64.iso /dev/sdb```