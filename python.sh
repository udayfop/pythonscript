#!/bin/bash

# Update the package list and upgrade installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Python 3 and pip
sudo apt-get install -y python3 python3-pip

# Verify the installation
echo "python3 --version"
python3 --version

echo "pip3 --version"
pip3 --version
