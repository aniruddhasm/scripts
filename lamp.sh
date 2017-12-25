#!/bin/bash

reset

echo "----------------------------------------------------------------------------------"
echo "Here we go with the installation of apache2, phpmyadmin, mysql in one go."
echo "Please stay cool as it will take some time."
echo "----------------------------------------------------------------------------------"

#Update the repositories

sudo apt-get update

#Apache2, PHP, MySQL and required packages installation
#PHP modules are version specify please verify the version while running the script and change accordingly.
#For eg: if PHP 7.1 is availble the command will be php7.1-mcrypt

echo "------ Installing Apache2, PHP, MySQL ------"
sudo apt-get -y install apache2 php libapache2-mod-php php-mcrypt php-curl php-mysql php-gd php-cli php-dev mysql-client

#The following commands set the MySQL root password to 123456 when you install the mysql-server package. Feel free to change it now only.

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123456'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123456'
sudo apt-get -y install mysql-server

#After instaling phpmyadmin we will install the php dependencies with phpmyadmin
#Here also replace the PHP version or else it will give error.
#For eg: if PHP 7.1 is availble the command will be php7.1-mbstring

echo "------ Installing phpmyadmin -------"
sudo apt-get install phpmyadmin php-mbstring php-gettext

#Restart all the installed services to verify that everything is installed properly

echo -e "\n"

sudo a2enmod rewrite

sudo service apache2 restart && sudo service mysql restart > /dev/null

echo -e "\n"

#Sublime Text is a very light weight text editor.
#you can skip this if you don't want sublime text editor.

echo "------ Installing sublime text -------"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

if [ $? -ne 0 ]; then
   echo "Please check the install services, There is some $(tput bold)$(tput setaf 1)Problem$(tput sgr0)"
else
   echo "Installed services run $(tput bold)$(tput setaf 2)Sucessfully$(tput sgr0)"
fi

echo -e "\n"
