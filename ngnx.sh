#!/bin/bash

# Update the package list and upgrade installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Nginx
sudo apt-get install -y nginx

# Start Nginx and enable it to start automatically on boot
sudo systemctl start nginx
sudo systemctl enable nginx

# Check nginx version
nginx -v

# Verify the installation by checking the status of Nginx
sudo systemctl status nginx

