#!/bin/bash

cd /usr/share/lilac/wsl

git pull

./gen_img.sh

rm -rf /usr/share/lilac/Repo/wsl/*
mv bioarchlinux-$(date "+%Y%m%d").tar /usr/share/lilac/Repo/wsl/
