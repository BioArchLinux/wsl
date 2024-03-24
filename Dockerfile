FROM	archlinux:latest

# import bioarchlinux keyring
RUN	pacman -Syu --noconfirm
RUN	pacman-key --recv-keys B1F96021DB62254D
RUN	pacman-key --finger B1F96021DB62254D
RUN	pacman-key --init
RUN	pacman-key --lsign-key B1F96021DB62254D

# add bioarchlinux to pacman.conf
RUN	curl https://raw.githubusercontent.com/BioArchLinux/iso/master/bio/pacman.conf -o /etc/pacman.conf
RUN	curl https://raw.githubusercontent.com/BioArchLinux/mirror/main/mirrorlist.bio -o /etc/pacman.d/mirrorlist.bio

# install keyring and mirrorlist packages
RUN	pacman -Syu --noconfirm
RUN	pacman -S --noconfirm bioarchlinux-keyring
RUN	pacman -S --noconfirm --overwrite '*' bioarchlinux-mirrorlist
RUN	rm -rf /var/cache/pacman/pkg
