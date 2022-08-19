# How to reapply the GUI default profile?

## In what cases?
You might need to update the default profile as provided on the live CD if updating the kaisen-skeleton package.  
However, there are a few things you should know before updating the skel and the two methods of doing so.

## Reapply the KDE default profile
To reapply the default profile for KDE, run this command with your current user to delete your KDE settings:
```rm -rf .kde .local/share/konsole .config/{gtkrc,gtkrc-2.0,gtk-3.0,gtk-4.0,katerc,katevirc,kdeglobals,konsolerc,kscreenlockerrc,ksmserverrc,kwinrc,kwriterc,plasmarc,kwalletrc,plasma-org.kde.plasma.desktop-appletsrc,plasmashellrc}```
To reapply the default Kaisen settings, run this command with your current user:
```cp /etc/skel/.config/{kwalletrc,plasma-org.kde.plasma.desktop-appletsrc,plasmashellrc} ~/.config```
Now you can log out and log back in.

## Reapply the LXQt default profile
To reapply the default profile for LXQt, run this command with your current user to delete your LXQt settings:
```rm -rf .config/{lxqt,openbox,cmst,pcmanfm-qt,qterminal.org,featherpad}```
Now you can log out and log back in.

## Reapply the MATE default profile
To reapply the default profile for MATE, run this command with your current user to delete your MATE settings:
```rm -rf .config/{dconf,mate}```
To reapply the default Kaisen settings, run this command with your current user:
```cp /etc/skel/.config/mate ~/.config```
Now you can log out and log back in.

## Reapply the XFCE default profile
To reapply the default profile for XFCE, run this command with your current user to delete your XFCE settings:
```rm -rf .config/xfce4```
Now you can log out and log back in.