# Kaisen Linux repositories

- Default `sources.list` in `/etc/apt/`:

```bash
deb https://deb.kaisenlinux.org kaisen-rolling main contrib non-free
deb-src https://deb.kaisenlinux.org kaisen-rolling main contrib non-free
```

## Referential lists

### kaisen-rolling

This repository is the official Kaisen Linux repository. It is updated directly from the Debian testing repository continuously, the mirror is updated every 6 hours.  
It is the default repository contained in live images as well as on the installed system.

### kaisen-devel

It is a repository used for the development environment, it references developed/forks packages for distribution as well as integrated packages from another source such as Anydesk and TeamViewer for example.  
During rolling repository updates, all the packages in this repository are "pull" on kaisen-rolling to restore them after their removal due to the update of the repository.  
It is also used as stock when the updated packages are ready to go into production (kaisen-rolling).

### kaisen-packages

This repository simply stores forked/developed packages for Kaisen Linux. It is mainly used as a backup of kaisen-devel. It also serves as an environment for testing new versions of packages before pushing packages to kaisen-devel which will push these new packages to kaisen-rolling itself.  
CAUTION: Installing packages from this repository can break certain parts of your system or even make it unstable or even unusable. Only use it if you know what you are doing.

### kaisen-testing

This repository is used during the development of new packages or experimental testing of some bundles (sometimes not often push to kaisen-rolling).  
CAUTION: Installing packages from this repository can break certain parts of your system or even make it unstable or even unusable. Only use it if you know what you are doing.  

### kaisen-rolling-snapshot

This repository is a snapshot of the last official revision of the project. This keeps the packages preinstalled on Kaisen Linux which can be uninstalled on Debian.

## Which repository to use

You can use them all. However, if you are new to GNU/Linux, avoid the kaisen-testing repository, repairing your system can be complicated in case of problems.