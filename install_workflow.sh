#!/bin/bash
cd #

mkdir workspace
mkdir workspace/go
mkdir workspace/python
mkdir workdspace/bash

# Add repositorys 
add-apt-repository ppa:webupd8team/java

# update repositorys list and update programms
apt update && apt dist-upgrade -y

# Install Java 8 runtime 
apt install -y oracle-java8-installer

# Install xclip 

apt install -y xclip

# Install Apache 2 server and PHP7 module
apt install -y apache2 libapache2-mod-php7.0

# Install MySql server and client 
apt install -y mysql-server mysql-client 

# Install PHP7 and PHP7 dependices 
apt install -y php7.0-mysql php7.0-curl php7.0-json php-gettext php7.0-mbstring php-xdebug

# Install PHPMyAdmin
apt install -y phpmyadmin

# Install Git and configure git 
apt install -y git
git config --global user.name "Marcel Franke"
git config --global user.email info@marcel-edmund-franke.de
git config --global color.ui "auto"
git config --global pack.threads "0" 

#Install Golang and configure Golang 

apt install golang

# Set GOPATH env variable

echo "GOPATH=$HOME/.go" >> ~/.bashrc
echo "export GOPATH" >> ~/.bashrc
source ~/.bashrc

# Install programms without paket manager 

cd /Downloads 

# Install Chrome-Browser and dependices
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

#Clear download folder after that installing process
rm -R *





