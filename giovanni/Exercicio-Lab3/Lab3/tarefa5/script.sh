#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo bash -c 'echo Criando o Web Server ${instance_count} com Terraform na DSA > /var/www/html/index.html'
