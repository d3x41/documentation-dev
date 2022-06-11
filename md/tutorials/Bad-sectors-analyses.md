# Bad sectors analyses

**This section is intended to explain how to analyze bad storage space on a storage device.**

## Softwares
### gsmartcontrol
You can use gsmartcontrol for analyse general condition of the hard drive or SSD. It uses the smartmontools service to display the health status of the storage device. This software have GUI and a lot informations are given.  
Gsmartcontrol will not display the number of bad sectors, but the SMART of the hard disk will indicate a problem with storage sectors.  He is rarely mistaken, but a false positive is possible. Use badblocks to perform an additional test.  

### badblocks
You can use badblocks tools with fdisk to detect bad sectors of a storage device. Follow this guide:

```bash
* sudo fdisk -l (spot storage device at analyse, for example /dev/sda)
* sudo badblocks -v /dev/sda
```

This command display in stdout bad sectors. If not sector display (for example, 250059, 250059095 etc), is that there is not bad sector.

### whdd
You can use whdd to detect bad sectors of a storage device. WHDD is a tool with a ncurses interfaces and can support SATA, memory card and NVME disks!
To start whdd, you can launch this command : ```sudo whdd``` and select the disk to analyze.
