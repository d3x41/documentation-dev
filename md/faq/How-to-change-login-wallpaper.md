# How to change login wallpaper?

## Text edition method
On MATE, LXDE, XFCE and KDE (defined by default by kaisen-kde postinst script), lightdm manages the login wallpaper. 

To change it, place the command:

```bash
sudo nano /etc/lightdm/lightdm-gtk-greeter.conf
```

You should find this:

```bash
[greeter]
background = /usr/share/backgrounds/line-white/3840x2160.png
theme-name = Kaisen-Dark-Material
icon-theme-name = Kaisen
default-user-image = /usr/share/icons/Kaisen/kaisen.png
user-background = false
font-name = Cantarell 11
clock-format = %A %d %B %Y : %H:%M:%S
indicators = ~spacer;~spacer;~host;~spacer;~session;~clock;~power
```

Change these lines:

```bash
background = /usr/share/backgrounds/line-white/3840x2160.png
```

For example in:

```bash
background = /home/user/Pictures/image.png
```

Which will give:

```bash
[greeter]
background = /home/user/Pictures/image.png
theme-name = Kaisen-Dark-Material
icon-theme-name = Kaisen
default-user-image = /usr/share/icons/Kaisen/kaisen.png
user-background = false
font-name = Cantarell 11
clock-format = %A %d %B %Y : %H:%M:%S
indicators = ~spacer;~spacer;~host;~spacer;~session;~clock;~power
```

## Graphic method
The **lightdm-gtk-greeter-settings** tool is integrated by default on MATE, LXDE, XFCE and KDE to be able to easily change the lightdm settings. This will produce the same result as editing the `/etc/lightdm/lightdm-gtk-greeter.conf` file as the software will modify it to reflect your settings made.