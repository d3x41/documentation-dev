# Create chroot

## Explanations
The chroot creation permit to be able to restore a damaged system, while mounting its damaged system on mount points (example /mnt /folder), and to execute the chroot command to "lock itself" on the mounted system and thus be able to work on it as if it was started.
This is mainly useful for systems that can no longer boot conventionally.

## Classic partition

```bash
sudo fdisk -l (Locate the EFI Linux partition and /)
sudo mount /dev/sdX /mnt (X represents the drive letter)
for mountpoints in /dev/ /dev/pts/ /proc/ /sys/; do sudo mount --bind $mountpoints /mnt/$mountpoints; done
sudo mount /dev/sdXY /mnt/boot/efi (X represents the drive letter, and the Y the EFI partition number, it should be the first)
sudo chroot /mnt
```

## LVM without LUKS encryption

```bash
sudo fdisk -l (Locate the EFI Linux partition and /)
sudo vgscan
sudo vgchange -ay
sudo mount /dev/mapper/name--vg-root /mnt (name--vg-root represents the name of the logical volume returned by the 
vgscan command)
sudo mount /dev/sdXY /mnt/boot (mount boot partition)
for mountpoints in /dev/ /dev/pts/ /proc/ /sys/; do sudo mount --bind $mountpoints /mnt/$mountpoints; done
sudo mount /dev/sdXY /mnt/boot/efi (mount the EFI partition often, this partition is often the first)
sudo chroot /mnt
```

## LVM with LUKS encryption
```bash
sudo fdisk -l (Locate the EFI Linux partition and /)
sudo cryptsetup luksOpen /dev/sdXY sdxy_crypt (X represents the drive letter, Y the partition / encrypted number)
sudo vgscan
sudo vgchange -ay
sudo mount /dev/mapper/name--vg-root /mnt (name--vg-root represents the name of the logical volume returned by the vgscan command)
sudo mount /dev/sdXY /mnt/boot (mount boot partition)
for mountpoints in /dev/ /dev/pts/ /proc/ /sys/; do sudo mount --bind $mountpoints /mnt/$mountpoints; done
sudo mount /dev/sdXY /mnt/boot/efi (mount the EFI partition often /dev/sdX1)
sudo chroot /mnt
```