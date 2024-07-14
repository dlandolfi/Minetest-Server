#!/bin/bash

# Add Minetest PPA repository
add-apt-repository ppa:minetestdevs/stable -y

# Update package lists
apt update

# Upgrade existing packages
apt upgrade -y

# Install Minetest server
apt install minetest-server -y

# Configure UFW firewall
ufw default deny incoming
ufw default allow outgoing
ufw allow OpenSSH
ufw allow 30000/udp
ufw enable

# Create and enable swap file
dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab