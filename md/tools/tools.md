# Tools

**List of tools integrated into Kaisen Linux**

## Maintenance tools

### Disks analysis
```bash
e2fsprogs, baobab, bonnie++, diskscan, disktype, gpart, gsmartcontrol, hdparm, ioping, testdisk, ncdu, smartmontools, di, util-linux, util-linux-locales
```

### Virus analysis
```bash
chkrootkit, clamdscan, clamtk, rkhunter, clamassassin, clamav-base, clamav-daemon, clamav-docs, clamav-freshclam, clamav-milter, clamav-testfiles, clamfs
```

### Cloning
```bash
clonezilla, dcfldd, fsarchiver, guymager, partclone, partimage
```

### USB boot
```bash
balena-etcher-electron, dcfldd
```

### Hardware
```bash
cpulimit, discover, discover-data, dmidecode, fio, hardinfo, hwinfo, iozone3, lshw, stress, stress-ng, stressant, lshw-gtk, flashbench, hw-probe, memtester, gfio, flashrom, inxi, cpu-x, sysstat
```

### Outlook PST
```bash
pffexport, pffinfo, pst2dii, pst2ldif
```

### Password tools
```bash
apg, bruteforce-luks, chntpw, cmospwd, crack, fcrackzip, hashcat, hydra, john, keepassxc, ophcrack, ophcrack-cli, pdfcrack, pwgen, rarcrack, rephrase, samdump2, hydra-gtk, crunch
```

### Partitioning and delete tools
```bash
dcfldd, fatresize, fdisk, gdisk, gparted, nwipe, parted, secure-delete, wipe, zerofree, bleachbit, scrub
```

### Data protection
```bash
fscrypt, lockfile-progs, zulucrypt-cli, zulucrypt-gui, zulumount-cli, zulumount-gui, veracrypt
```

### Data recovery
```bash
ddrescue-gui, ddrescueview, ddrutility, ext4magic, extundelete, foremost, ddrescue, gddrescue, testdisk, magicrescue, myrescue, recoverdm, recoverjpeg, safecopy, scalpel, scrounge-ntfs, hfsprescue
```

### Temperature analysis
```bash
hddtemp, xsensors, lm-sensors, psensor, psensor-common
```

## Administrators tools

### DHCP
```bash
isc-dhcp-client, isc-dhcp-common, dhcpdump, dhcping
```

### DNS
```bash
dnsenum, dnstop, mdns-scan, whois, dnsutils
```

### Ethernet
```bash
ethstatus, ethtool, packeth
```

### Firewalling
```bash
iptables-persistent, iptstate
```

### IP
```bash
net-tools, ipcalc, sipcalc, iproute2, iptraf-ng, iptraf, ipv6calc, traceroute, iputils-tracepath
```

### GNS3
```bash
gns3-gui, gns3-server, dynamips, vpcs, ubridge, nvram_export
```

### MAC
```bash
arp-scan, arpalert, iputils-arping, arptables, arpwatch, macchanger
```

### Monitoring
```bash
cbm, etherape, ifstat, iftop, iperf, iperf3, nethogs, netperfmeter, sockstat, tcpstat
```

### PCAP
```bash
darkstat, hunt, netsed, ngrep, pcapfix, scapy, tcpdump, tcpreplay, tcpxtract, tshark, wireshark
```

### Console port
```bash
cu, minicom, picocom, screen, setserial, statserial
```

### Network scanners
```bash
arp-scan, bettercap, bettercap-caplets, bettercap-ui, driftnet, dsniff, ettercap-graphical, hping3, lft, masscan, mitmproxy, mtr-tiny, nast, ndiff, netdiscover, netsniff-ng, net-tools, ncat, nmap, nmapsi4, scapy, python3-scapy, telnet, iputils-tracepath, traceroute
```

### SSL/TLS
```bash
ssldump, sslsniff, sslsplit, sslscan, sslyze
```

### TCP/UDP
```bash
netcat, netcat-openbsd, tcpreplay, tcpflow, tcptrace, tcptraceroute, packetsender, udpcast, dsniff
```

### Wi-Fi
```bash
aircrack-ng, hostapd, iw, rfkill
```

### VPN
```bash
openvpn, wireguard
```

### Various network administrators tools
```bash
2ping, atftp, cdpr, comgt, ndisc6, ntpdate, socat, ssmping, wakeonlan, wondershaper, ifenslave
```

### Remote administration
```bash
virt-viewer, rdesktop, grdesktop, freerdp2-x11, ssh, sshfs, pssh, clusterssh, tmux, zssh, remmina, remmina-plugin-exec, remmina-plugin-kwallet, remmina-plugin-spice, remmina-plugin-www
```

### Backup tools
```bash
dirvish, automysqlbackup, autopostgresqlbackup, bacula-bscan, bacula-client, bacula-common, bacula-common-sqlite3, bacula-console, bacula-console-qt, bacula-fd, bacula-sd, dump, duplicity, restic, rsbackup, rsync, backup2l, zsync, vbackup, duply, grsync, zbackup
```

### FTP
```bash
filezilla, gftp, lftp
```

### Microsoft
```bash
bloodhound, ldapdomaindump, cabextract, powershell
```

### Virtualization
```bash
virtualbox, virtualbox-qt, virtualbox-dkms, virtualbox-source, virtualbox-guest-additions-iso, virtualbox-ext-pack, virt-manager, qemu, qemu-system, qemu-system-x86, qemu-system-gui, qemu-efi, qemu-utils, libvirt-clients, libvirt-daemon-system, virtinst, virt-viewer
```

### Various system administrators tools
```bash
xca, krb5-config, krb5-pkinit, krb5-user, krb5-locales, ctop, apache2-utils, ssh-askpass, sshpass
```

### Apparmor tools and profiles
```bash
apparmor, apparmor-profiles, apparmor-profiles-extra, apparmor-notify, apparmor-utils
```

### Databases clients
```bash
mariadb-client, etcd-client, postgresql-client
```

## DevOps and Cloud
```bash
vagrant, ansible, lxc, docker, docker-compose, docker.io, jmeter, kubectl, kubectl-convert, kubemark, awscli, packer, azure-cli, puppet, terraform, s3fs, eksctl, buildah, helm, k6, k9s, minikube, podman, trivy
```

## System snapshots
```bash
apt-btrfs-snapshot, btrbk, snapper, timeshift
```

## Filesystems tools
```bash
cryptsetup, dmraid, dmsetup, mdadm, lvm2, dosfstools, f2fs-tools, nilfs-tools, ocfs2-tools, btrfs-compsize, btrfs-heatmap, btrfs-progs, btrfsmaintenance, gfs2-utils, hfsplus, hfsprogs, hfsutils, hfsutils-tcltk, jfsutils, reiserfsprogs, vmfs-tools, xfsdump, xfsprogs, zfs-fuse, zfsnap, exfatprogs, exfat-fuse, ceph-fuse, fuse3, fuse-zip, fuseiso, squashfuse, glusterfs-client, udfclient, udftools, reiser4progs, vmfs6-tools, xmount, archivemount, tmfs, cifs-utils, apfs-fuse, apfsutil, ecryptfs-utils, libbde-utils, dislocker, libfvde-utils, libvhdi-utils, libvmdk-utils, libfsntfs-utils
```

## Miscellaneous tools
```bash
progress, pv, less, mlocate, dirmngr, gpg, gnupg2, curl, wget, git, gpg-agent, neofetch, git-repair, img2pdf, mc, strace, yamllint, ltrace, irqbalance, tree, vim, codium, cups, hexedit, dstat, file, memstat, psmisc, htop, qtop, lsof, rdfind, fdupes, lzop, p7zip-full, pigz, unp, unar, unrar-free, unzip, zip, bzip2, tar, unrar, zstd, gtkhash
```

## Integrated firmwares
```bash
firmware-amd-graphics, firmware-ast, firmware-ath9k-htc, firmware-atheros, firmware-b43-installer, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-cavium, firmware-intel-sound, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-microbit-micropython, firmware-misc-nonfree, firmware-myricom, firmware-netronome, firmware-netxen, firmware-qcom-media, firmware-qcom-soc, firmware-qlogic, firmware-realtek, firmware-samsung, firmware-siano, firmware-sof-signed, firmware-ti-connectivity, firmware-tomu, firmware-zd1211, bluetooth, blueman, bluez-tools, bluez-firmware, alsa-firmware-loaders, atmel-firmware
```

## KDE
```bash
kaisen-interfaces-common, kde-standard, firefox, firefox-l10n-fr, firefox-l10n-es-es, firefox-l10n-pt-pt, firefox-l10n-it, firefox-l10n-de, sudo, plymouth, kaisen-menu, lightdm, lightdm-gtk-greeter, lightdm-gtk-greeter-settings, sddm, sddm-theme-breeze, terminator, kaisen-skeleton, kaisen-design, fonts-cantarell, fonts-powerline, conky-all, conkycolors, fonts-liberation, fonts-noto-color-emoji, locales-all, libreoffice, libreoffice-help-fr, libreoffice-help-en-us, libreoffice-help-es, libreoffice-help-pt, libreoffice-help-it, libreoffice-help-de, libreoffice-l10n-fr, libreoffice-l10n-es, libreoffice-l10n-pt, libreoffice-l10n-it, libreoffice-l10n-de, thunderbird, thunderbird-l10n-es-es, thunderbird-l10n-fr, thunderbird-l10n-it, thunderbird-l10n-pt-pt, thunderbird-l10n-de, vlc, gimp, qbittorrent, hexchat
```

## LXQT
```bash
kaisen-interfaces-common, lxqt, lxqt-archiver, cmst, lightdm, lightdm-gtk-greeter, firefox, firefox-l10n-fr, firefox-l10n-es-es, firefox-l10n-pt-pt, firefox-l10n-it, firefox-l10n-de, sudo, kaisen-menu, plymouth, xcursor-themes, terminator, kaisen-skeleton, fonts-cantarell, fonts-powerline, kaisen-design, lightdm-gtk-greeter-settings, conky-all, conkycolors, fonts-liberation, fonts-noto-color-emoji, locales-all, libreoffice, libreoffice-help-fr, libreoffice-help-en-us, libreoffice-help-es, libreoffice-help-pt, libreoffice-help-it, libreoffice-help-de, libreoffice-l10n-fr, libreoffice-l10n-es, libreoffice-l10n-pt, libreoffice-l10n-it, libreoffice-l10n-de, thunderbird, thunderbird-l10n-es-es, thunderbird-l10n-fr, thunderbird-l10n-it, thunderbird-l10n-pt-pt, thunderbird-l10n-de, vlc, gimp, qbittorrent, hexchat, gnome-calculator
```

## MATE
```bash
kaisen-interfaces-common, mate-desktop-environment, lightdm, lightdm-gtk-greeter, network-manager, network-manager-gnome, firefox, firefox-l10n-fr, firefox-l10n-es-es, firefox-l10n-pt-pt, firefox-l10n-it, firefox-l10n-de, sudo, kaisen-menu, plymouth, xcursor-themes, terminator, kaisen-skeleton, fonts-cantarell, fonts-powerline, kaisen-design, lightdm-gtk-greeter-settings, conky-all, conkycolors, fonts-liberation, fonts-noto-color-emoji, locales-all, libreoffice, libreoffice-help-fr, libreoffice-help-en-us, libreoffice-help-es, libreoffice-help-pt, libreoffice-help-it, libreoffice-help-de, libreoffice-l10n-fr, libreoffice-l10n-es, libreoffice-l10n-pt, libreoffice-l10n-it, libreoffice-l10n-de, thunderbird, thunderbird-l10n-es-es, thunderbird-l10n-fr, thunderbird-l10n-it, thunderbird-l10n-pt-pt, thunderbird-l10n-de, vlc, gimp, qbittorrent, hexchat
```

## XFCE
```bash
kaisen-interfaces-common, xfce4, xfce4-panel, xfce4-power-manager, xfce4-power-manager-data, xfce4-power-manager-plugins, xfce4-pulseaudio-plugin, xfce4-screenshooter, xfce4-session, xfce4-settings, xfce4-terminal, xfce4-whiskermenu-plugin, gedit, lightdm, lightdm-gtk-greeter, network-manager, network-manager-gnome, firefox, firefox-l10n-fr, firefox-l10n-es-es, firefox-l10n-pt-pt, firefox-l10n-it, firefox-l10n-de, sudo, kaisen-menu, plymouth, xcursor-themes, terminator, kaisen-skeleton, fonts-cantarell, fonts-powerline, kaisen-design, lightdm-gtk-greeter-settings, conky-all, conkycolors, fonts-liberation, fonts-noto-color-emoji, locales-all, libreoffice, libreoffice-help-fr, libreoffice-help-en-us, libreoffice-help-es, libreoffice-help-pt, libreoffice-help-it, libreoffice-help-de, libreoffice-l10n-fr, libreoffice-l10n-es, libreoffice-l10n-pt, libreoffice-l10n-it, libreoffice-l10n-de, thunderbird, thunderbird-l10n-es-es, thunderbird-l10n-fr, thunderbird-l10n-it, thunderbird-l10n-pt-pt, thunderbird-l10n-de, vlc, gimp, qbittorrent, hexchat, gnome-calculator
```