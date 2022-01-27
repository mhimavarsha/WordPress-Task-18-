#!/usr/bin/bash

yum install httpd -y
yum install mysql -y
amazon-linux-extras enable php7.4
yum install php-cli php-pdo php-fpm php-json php-mysqlnd
wget http://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
systemctl start httpd
systemctl enable httpd
