# BioArchLinux on WSL

## Download

Download [wsl tar file](https://repo.bioarchlinux.org/wsl) from [any mirror](https://raw.githubusercontent.com/BioArchLinux/mirror/main/mirrorlist.bio) of BioArchLinux.

## Import to WSL

You have to enable wsl first. Specific a `StoragePath` and run the following command under the tar file directory.

```
wsl --import BioArchLinux StoragePath .\bioarchlinux.tar
wsl -d BioArchLinux
```
## Choose mirror

then you need to choose a mirror of archlinux and bioarchlinux

choose mirror of archlinux from [here](https://archlinux.org/mirrorlist/) and run the following command ( take sdu mirror as the example)

```
echo 'Server = https://mirrors.sdu.edu.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
```

choose mirror bioarchlinux from [here](https://raw.githubusercontent.com/BioArchLinux/mirror/main/mirrorlist.bio) and run the following command ( take sdu mirror as the example)

```
echo 'Server = https://mirrors.sdu.edu.cn/bioarchlinux/$arch' > /etc/pacman.d/mirrorlist.bio
```
## Use BioArchLinux

Finally, you can install any packages from BioArchLinux
```
pacman -Syu
pacman -S foo
```
