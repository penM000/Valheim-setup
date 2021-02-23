#!/bin/bash
apt update
apt upgrade -y
apt install -y unzip binutils jq netcat lib32gcc1 lib32stdc++6 steamcmd libsdl2-2.0-0:i386

fallocate -l 2G /swapfile2GB
chmod 600 /swapfile2GB
mkswap /swapfile2GB
swapon /swapfile2GB

grep "swapfile2GB" /etc/fstab
if [ $? = 0 ]; then
    echo "swap ok"
else
    echo "/swapfile2GB none swap sw 0 0" >> /etc/fstab
fi


useradd -s /bin/bash -m vhserver
su - vhserver
