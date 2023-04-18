#!/bin/bash

# Change to the directory of your Node.js application
cd /home/ubuntu/admin

# Install dependencies
npm install

# Build the application
npm run build

# Start the application with pm2
pm2 start admin --name "admin"

# Save the pm2 process list so it will automatically restart on reboot
pm2 save
