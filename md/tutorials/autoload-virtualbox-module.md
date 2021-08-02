# Autoload VirtualBox module at boot

## On active systems

On full live ISOS, by default the VirtualBox module is launched at the start of the distribution because the configuration has been done beforehand. Even if the distribution and VirtualBox are updated, this configuration will remain effective.

## On NETINST ISO

On the NETINST ISO, this configuration will be done automatically if you install [all the tools for sysadmin](netinst.html#how-the-netinst-installer-works) or [only the virtualization tools](netinst.html#how-the-netinst-installer-works).

## Do it manually

If you have not installed Kaisen Linux via the NETINST installer and you want to avoid the "modprobe vboxdrv" message at each boot you need to perform this configuration:
```bash
echo "vboxdrv" | sudo tee /etc/modules-load.d/virtualbox.conf
```
This configuration will remain effective even after an update of VirtualBox or the distribution.