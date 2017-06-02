#!/bin/sh
echo "http://mirrors.gigenet.com/alpinelinux/edge/community" >> /etc/apk/repositories
apk update
apk add open-vm-tools bash bash-completion vim sudo docker shadow
	
adduser -s /bin/bash chris -G wheel

echo "chris ALL=(ALL) ALL" >> /etc/sudoers

addgroup chris docker

rc-update add docker boot
service docker start

chsh -s /bin/bash root
