#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo echo “Hello from EC2instance with ${environment} data source” >> /var/www/html/index.html