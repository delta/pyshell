# PyShell

A Customizable Login Shell for Linux Systems written in Python

## Essentials

Python 2.5 and above
Root Privilages for installation

## Installation
* Copy the pysh file to some folder say "/var/pyshell/pysh"
* Give execute permissions to the file.
* Create a folder for log "/var/pyshell/log/
* Browse through the code. Its pretty simple to understand the config. Edit it to fit your needs.
* Change the login shell for the user using the command "chsh"

### Using install.sh

* Run `sudo sh install.sh`
* Enter password for user `shell` when prompted
* Make sure you see this message `Changing shell for shell. Shell changed.`
* Enter the name of the package manager. Ubuntu: `apt-get` | Fedora, CentOS, Redhat, etc... : `yum` | Arch: `pacman`. 
* Make sure sshd is running. 

## Using the newly created shell

* SSH from some other system. `ssh shell@ip_addr` 
* Enter the password for shell 
* And it's magical!. :P
