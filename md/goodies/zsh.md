# ZSH

## ZSH on Kaisen Linux
On Kaisen Linux, ZSH is preinstalled by default with the oh-my-zsh framework. This allows for improved completion, many plugins and so much more!

## Use ZSH for simple user
Kaisen Linux's default terminal is Bash. Bash is suitable for the majority of users and it is for this reason that it has become the default terminal since Kaisen 2.1.  
You are only one user and you only have one account installed, use the following command (as your user and not as root):  

```bash
chsh -s /bin/zsh
```

The next time you reconnect to your session, you will be back in ZSH.

## Multiple user method

### Useradd command
Type this when adding a user with the useradd command to give them the ZSH shell by default:

```bash
sudo useradd -s /bin/zsh user
```

### Modify useradd configuration
In the file `/etc/default/useradd`, change the following line:

```bash
SHELL=/bin/bash
```

In:

```bash
SHELL=/bin/zsh
```

After that, with the useradd command the bash shell will be set by default, and you will no longer need to specify -s option.  
When updating the shadow package, select the option "N" or "O" to keep your configurations.

### Adduser command
Type this when adding a user with the adduser command to give them the bash shell by default:

```bash
sudo adduser --shell /bin/zsh user
```

### Modify adduser configuration
In the file `/etc/adduser.conf`, change the following line:

```bash
DSHELL=/bin/bash
```

In:

```bash
DSHELL=/bin/zsh
```

After that, with the adduser command the bash shell will be set by default, and you will no longer need to specify --shell option.
When updating the adduser package, select the option "N" or "O" to keep your configurations.