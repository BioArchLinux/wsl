#!/bin/bash

cd /usr/share/lilac/wsl

git pull

./gen_img.sh

rm -rf /usr/share/lilac/Repo/wsl/*

mv bioarchlinux-$(date "+%Y%m%d").tar rootfs.tar
gzip rootfs.tar
tar czvf ./bioarchlinux-$(date "+%Y%m%d").tar --add-file=BioArch.exe --add-file=rootfs.tar.gz

for bin in $(pacman -Ql coreutils | grep 'sum$' | sed 's/\// /g' | awk '{print $4}')
do
	$bin bioarchlinux-$(date "+%Y%m%d").tar > bioarchlinux-$(date "+%Y%m%d").tar.$bin
	mv bioarchlinux-$(date "+%Y%m%d").tar.$bin /usr/share/lilac/Repo/wsl
done
mv bioarchlinux-$(date "+%Y%m%d").tar /usr/share/lilac/Repo/wsl/
