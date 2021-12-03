# Configure cryptsetup-nuke-password

## What cryptsetup-nuke-password
The software cryptsetup-nuke password is a software developed by Offensive Security and publish under GPLv3 licence. This software provides additional security at cryptsetup.  
It allows to define an additional password which can also be typed in the cryptsetup password prompt, but allows to destroy the decryption key of the cryptsetup volumes in order to prevent its unlocking.

## How to configure cryptsetup-nuke-password
In the menu of miscellaneous tools, there is an entry for the command ```sudo dpkg-reconfigure cryptsetup-nuke-password```.  
This command will open an ncurses window and allow you to set a password, keep the current one or simply delete it.  
Once a password is set, it can be typed at the cryptsetup password prompt when the computer starts up. This typed password will indicate invalid password, but will also indicate on the password defined during the encryption with cryptsetup as invalid because the decryption keys will have been destroyed.  
Use only with full knowledge of the facts and consequences associated with this functionality. We will not be responsible for damage to your systems in the event of improper handling.  
To remove the set password, simply re-run the ```sudo dpkg-reconfigure cryptsetup-nuke-password``` command and select "delete current password".

## Backing up the encryption key
If you plan to use this nuke password, you should consider
save the luks header. This can be useful for example when you travel with your business computer and even encrypted contains sensitive information about the information system in which you are working.  
You can delete and then restore the header without losing access to your data.  

```sudo cryptsetup luksHeaderBackup <device> --header-backup-file <your-backup-file>```

To later restore the header, you will have to do:

```sudo cryptsetup luksHeaderRestore <device> --header-backup-file <your-backup-file>```

## Prerequisite
You must install the distribution to take advantage of the functionality offered by nuke, the live system does not support nuke configuration because it cannot regenerate the initrd on our official images.
