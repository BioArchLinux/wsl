#!/bin/bash

cd /usr/share/lilac/wsl

git pull

./gen_img.sh

rm -rf /usr/share/lilac/Repo/wsl/*

for bin in $(pacman -Ql coreutils | grep 'sum$' | sed 's/\// /g' | awk '{print $4}')
do
	$bin bioarchlinux-$(date "+%Y%m%d").tar > bioarchlinux-$(date "+%Y%m%d").tar.$bin
	mv bioarchlinux-$(date "+%Y%m%d").tar.$bin /usr/share/lilac/Repo/wsl
done
mv bioarchlinux-$(date "+%Y%m%d").tar /usr/share/lilac/Repo/wsl/
