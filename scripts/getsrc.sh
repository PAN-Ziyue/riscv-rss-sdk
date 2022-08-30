#!/bin/sh

BUILDROOT_VER="2022.02.4"
LINUX_VER="5.15.63"
OPENSBI_VER="1.1"

# get tarball
wget https://buildroot.org/downloads/buildroot-$BUILDROOT_VER.tar.gz
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-$LINUX_VER.tar.xz
wget https://github.com/riscv-software-src/opensbi/archive/refs/tags/v$OPENSBI_VER.tar.gz

# unzip
tar -xf buildroot-$BUILDROOT_VER.tar.gz
tar -xf linux-$LINUX_VER.tar.xz
tar -xf v$OPENSBI_VER.tar.gz

# move
rm -rf repo
mkdir repo
mv buildroot-$BUILDROOT_VER repo/buildroot && rm buildroot-$BUILDROOT_VER.tar.gz
mv linux-$LINUX_VER repo/linux && rm linux-$LINUX_VER.tar.xz
mv opensbi-$OPENSBI_VER repo/opensbi && rm v$OPENSBI_VER.tar.gz
