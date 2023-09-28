#!/bin/bash

# Update CentOs with any patches
yum update -y --exclude=kernel

#Tools
yum install -y nano git unzip screen

#Apache
yum install -y httpd httpd-devel httpd-tools


rm -rf /var/www/html
ln -s /vagrant /var/www/html


service httpd start


# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MYSql 
yum install -y mysql mysql-server mysql-devel

service mysql start

mysql -u root -e "SHOW DATABASES";

#Download Starter Content

service httpd restart