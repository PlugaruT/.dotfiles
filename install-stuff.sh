#!/bin/bash
echo "downloading and installing useful software..."

echo "installing zsh"

sudo apt-get install zsh

echo "installing oh-my-zsh"

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "installing Git"

sudo apt-get install git

echo "installing vim"

sudo apt-get install vim

echo "Installing Java 7 and Java 8"

sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java8-installer

echo "Setting Java 8 as default JVM"

sudo apt-get install oracle-java8-set-default

echo "installing font fix for Open JDK"

sudo add-apt-repository ppa:no1wantdthisname/openjdk-fontfix
sudo apt-get update
sudo apt-get install openjdk-7-jdk
sudo apt-get install openjdk-8-jdk

echo "installing Node.js"

sudo apt-get install nodejs

echo "installing Npm for Node.js"

sudo apt-get install npm

echo "installing Php 5"

sudo apt-get install php5

echo "installing Pip for Python"

sudo apt-get install python-pip

echo "installing Chrome"

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo rm google-chrome*.deb # removing installer package

echo "installing Skype"

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install skype

echo "installing VLC"

sudo apt-get install vlc browser-plugin-vlc

echo "installing qBittorrent"

sudo add-apt-repository ppa:hydr0g3n/qbittorrent-stable
sudo apt-get update
sudo apt-get install qbittorrent

echo "installing Atom"

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
