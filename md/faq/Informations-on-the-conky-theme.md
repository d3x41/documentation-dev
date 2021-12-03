# Informations on the conky theme

## How is conky installed?
Conky is installed as a dependency of the package associated with your GUI. The conky configuration is then copied to `/etc/skel` and this automatically copied to the `/home/$USER` directory of all users on the system.  

## How to update conky?
In case you are using the default conky theme provided by your GUI, you don't have to do anything. For example, if you are using MATE, when the kaisen-mate package is updated, the conky theme will also be updated automatically!

## Launch conky with a custom theme
It's easy to run your own conky setup. You must modify the conffile `/etc/xdg/autostart/conky.desktop` This file contains this by default:

```bash
[Desktop Entry]
Name=Kaisen Linux Conky
Exec=/usr/bin/conky
Hidden=false
Type=Application
X-KDE-Autostart-enabled=true
X-LXQT-Autostart-enabled=true
X-MATE-Autostart-enabled=true
X-XFCE-Autostart-enabled=true
```

In this example, your conky configuration file will be called: `.myconkyconf`

You will simply have to replace the file like this:

```bash
[Desktop Entry]
Name=Kaisen Linux Conky
Exec=/usr/bin/conky --config ~/.conkyconf
Hidden=false
Type=Application
X-KDE-Autostart-enabled=true
X-LXQT-Autostart-enabled=true
X-MATE-Autostart-enabled=true
X-XFCE-Autostart-enabled=true
```

The next time you start conky, your own configuration will be executed. If it does not perform as you expect, it could probably be an error in your configurations.  
When updating the kaisen-kde, kaisen-lxqt, kaisen-mate or kaisen-xfce package, select the option "N" or "O" to keep your configurations.

## Disable conky launch
You cannot therefore remove the conky-all package, otherwise you risk removing your entire GUI.  
But do not panic ! You have a very easy way to not start conky even if it is installed.  
You must go and modify the file: `/etc/xdg/autostart/conky.desktop`.  

This file contains this by default:

```bash
[Desktop Entry]
Name=Kaisen Linux Conky
Exec=/usr/bin/conky
Hidden=false
Type=Application
X-KDE-Autostart-enabled=true
X-LXQT-Autostart-enabled=true
X-MATE-Autostart-enabled=true
X-XFCE-Autostart-enabled=true
```

Just replace the line `Hidden=false` with `Hidden=true` to completely disable launching Conky (the process won't even be started, conky, so it won't consume any resources.)  

So the file will look like:

```bash
[Desktop Entry]
Name=Kaisen Linux Conky
Exec=/usr/bin/conky
Hidden=true
Type=Application
X-KDE-Autostart-enabled=true
X-LXQT-Autostart-enabled=true
X-MATE-Autostart-enabled=true
X-XFCE-Autostart-enabled=true
```

When updating the kaisen-kde, kaisen-lxqt, kaisen-mate or kaisen-xfce package, select the option "N" or "O" to keep your configurations.  

## Problems with KDE desktop

I have seen some issues with KDE.  
The conky is initially configured to be completely transparent and integrated into the wallpaper. KDE is initially configured to start programs that were not closed from the previous session, and Conky is one of them.  
Kaisen Linux's default profile disables this feature by default by opening an empty session each time the computer is started/restarted.  
To turn off the restore from the previous session, do this:  
Go to ```"System Settings" => "Startup and Shutdown" => "Desktop Session" after select "Start with an empty session".```

## Relaunch conky manually
Sometimes, Conky may not automatically relaunch after a package update. To relaunch it, it is very simple. Open a terminal window, and type this command:  

```bash
conky&
```
Next this command, press `ctrl +D` until closing the terminal. Conky is now relaunched.

## Completely uninstall Conky
Conky like almost all of the tools pre-integrated in Kaisen Linux can be uninstalled manually via an APT command.  
For Conky, do this: ```sudo apt remove --purge conky-all```