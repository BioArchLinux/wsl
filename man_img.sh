#!/bin/bash

cd /usr/share/lilac/wsl

git pull

./gen_img.sh

rm -rf /usr/share/lilac/Repo/wsl/*
md5sum bioarchlinux-$(date "+%Y%m%d").tar > bioarchlinux-$(date "+%Y%m%d").tar.md5
sha1sum bioarchlinux-$(date "+%Y%m%d").tar > bioarchlinux-$(date "+%Y%m%d").tar.sha1
mv bioarchlinux-$(date "+%Y%m%d").tar* /usr/share/lilac/Repo/wsl/
