#!/bin/bash
set -e

# Run this script for supporting multiacrch capabilities, specially when host machine is based on ARM (.i.e Macbook Pro M1 or M2) 

dpkg --add-architecture amd64

echo 'deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports jammy main restricted universe multiverse
deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports jammy-updates main restricted universe multiverse
deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports jammy-security main restricted universe multiverse
deb [arch=amd64] http://archive.ubuntu.com/ubuntu jammy main restricted universe multiverse
deb [arch=amd64] http://archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse
deb [arch=amd64] http://archive.ubuntu.com/ubuntu jammy-security main restricted universe multiverse' | tee /etc/apt/sources.list

apt update
apt install -y libc6:amd64 libstdc++6:amd64