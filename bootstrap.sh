#!/bin/sh
echo "http://mirrors.gigenet.com/alpinelinux/edge/community" >> /etc/apk/repositories
apk update
apk add open-vm-tools bash bash-completion vim sudo docker shadow
	
adduser -s /bin/bash chris -G wheel

echo "chris ALL=(ALL) ALL" >> /etc/sudoers

addgroup chris docker
addgroup chris
addgroup chris chris

rc-update add docker boot
service docker start

chsh -s /bin/bash root

/etc/init.d/open-vm-tools start

rc-update add open-vm-tools boot
