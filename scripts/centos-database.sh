#!/bin/bash

# MYSql 
yum install -y mysql mysql-server mysql-devel

service mysql start

mysql -u root -e "SHOW DATABASES";

