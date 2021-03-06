#!/bin/bash

reset

echo "----------------------------------------------------------------------------------"
echo "Here we go with the installation of apache2, phpmyadmin, mysql in one go."
echo "Please stay cool as it will take some time."
echo "----------------------------------------------------------------------------------"

#Update the repositories

sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

#Apache2, PHP, MySQL and required packages installation
#PHP modules are version specify please verify the version while running the script and change accordingly.
#For eg: if PHP 7.1 is availble the command will be php7.1-mcrypt

echo "------ Installing Apache2, PHP, MySQL ------"
sudo apt-get -y install apache2 php7.4 libapache2-mod-php php7.4-mcrypt php7.4-curl php7.4-mysql php7.4-gd php7.4-cli php7.4-dev mysql-client

#The following commands set the MySQL root password to pa$$word@156 when you install the mysql-server package. Change the passord as per need now only.

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password pa$$word@156'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pa$$word@156'
sudo apt-get -y install mysql-server

#After instaling phpmyadmin we will install the php dependencies with phpmyadmin
#Here also replace the PHP version or else it will give error.
#For eg: if PHP 7.1 is availble the command will be php7.1-mbstring

echo "------ Installing phpmyadmin -------"
sudo apt-get install phpmyadmin php7.4-mbstring php7.4-gettext

#Restart all the installed services to verify that everything is installed properly

echo -e "\n"

sudo a2enmod rewrite

sudo service apache2 restart && sudo service mysql restart > /dev/null

echo -e "\n"

if [ $? -ne 0 ]; then
   echo "Please check the install services, There is some $(tput bold)$(tput setaf 1)Problem$(tput sgr0)"
else
   echo "Installed services run $(tput bold)$(tput setaf 2)Sucessfully$(tput sgr0)"
fi

echo -e "\n"
