#!/bin/bash
set -e

# Go to project folder
cd /root/wordpress-self-project

# Pull latest code from GitHub
git pull origin main

# Sync files to production folder
rsync -av --exclude='.git' ./ /var/www/html/

echo "Deployment completed!"

