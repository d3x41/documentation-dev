# Kaisen Linux downloads

## Advices
Only download ISO from the official link:

```bash
https://kaisenlinux.org/downloads
```

The officials mirrors:

```bash
https://iso.kaisenlinux.org
https://torrent.kaisenlinux.org
```

**Download a Kaisen Linux ISO only via the links mentioned above.**  
**We cannot be held responsible for any problem with an unofficial ISO.**  

## Recommendations

### Linux
Even if you have downloaded ISO from an official source, still perform checksum verification.
At each release, we publish the checksums in sha256. To check the ISO, proceed as follows, for example for the MATE ISO:

Command: ```sha256sum /path/of/ISO/kaisenlinuxrolling2.2-amd64-MATE.iso```

### Windows
For Windows, use **HackTab** software and check sha256 value.
Right click on the file to analyze and go to the **hashes** section.

### MacOS

For MacOS, use the shasum command => Example:

```bash
shasum -a 256 /path/your/ISO/kaisenlinuxrolling2.2-amd64-MATE.iso
6103a435e675b5b13157d6102df1ee4d377c21d46bdee59e3a6615b76a04d2a5 /path/of/ISO/kaisenlinuxrolling2.2-amd64-MATE.iso
```
