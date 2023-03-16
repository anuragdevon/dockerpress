#!/bin/bash

# Add a new user to wheel group
adduser username
usermod -aG sudo username

# create ssh keypair
ssh-keygen

# Setup authorized keys for access
su - username
mkdir ~/.ssh
chmod 700 ~/.ssh
sudo pacman -Sy vim
vim ~/.ssh/authorized_keys