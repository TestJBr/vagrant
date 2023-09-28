#Apache
yum install -y httpd httpd-devel httpd-tools


rm -rf /var/www/html
ln -s /vagrant /var/www/html


service httpd start


# PHP
yum install -y php php-cli php-common php-devel php-mysql

#Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/TestJBr/vagrant/master/files/index.html
sudo -u vagrant wget -q https://github.com/TestJBr/vagrant/blob/master/files/info.php


service httpd restart