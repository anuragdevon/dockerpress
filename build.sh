#!/bin/bash
# Setup Letsencrypt SSL on URL
sudo pacman -Sy certbot -y
sudo certbot certonly --standalone -d example.com -d www.example.com

# Setup Wordpress
mkdir wordpress
cd wordpress
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz --strip-components=1

# Initiate docker build and run
docker-compose up --build
docker-compose up -d