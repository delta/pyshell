#!/bin/bash

useradd shell
passwd shell 

mkdir -p /var/shells/pyshell
cp pysh /var/shells/pyshell/
cp config.py /var/shells/pyshell

shell_location=/var/shells/pyshell/pysh

echo $shell_location >> /etc/shells
chsh -s $shell_location shell

echo "What package manager are you using? ( apt-get | yum | pacman ) : "
read pacman

case pacman in 
    apt-get)
	apt-get install -y openssh-server
	service sshd start
	;;
    yum)
	yum install -y openssh-server
	service sshd start
	;;
    pacman)
	pacman -S openssh
	/etc/rc.d/sshd start
	;;
esac

echo "Installation Complete."
