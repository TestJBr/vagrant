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
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/TestJBr/vagrant/master/files/index.html
<<<<<<< HEAD
sudo -u vagrant wget -q https://github.com/TestJBr/vagrant/blob/master/files/info.php


service httpd restart
=======
sudo -u vagrant wget -q https://raw.githubusercontent.com/TestJBr/vagrant/master/files/info.php

service httpd restart
>>>>>>> dfd8e7f3a399f132e9ebe5e025d6b44f830a0d88
