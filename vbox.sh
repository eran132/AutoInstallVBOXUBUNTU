#! /bin/bash

#Update firs#
#sudo apt-get update -y

#Clean obsolete packages with autoremove
sudo apt-get autoremove -y

#Instal DKMS#
sudo apt-get install dkms -y

#Add Oracle Key
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -

#Add PPA
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'

#Update
sudo apt-get update -y

#Verify version of VBOX
#sudo apt-cache search virtualbox

#Install VBOX
sudo apt-get install virtualbox-5.0 -y


#Download & Install the Extansion Pack
cd /tmp

wget http://download.virtualbox.org/virtualbox/5.0.10/Oracle_VM_VirtualBox_Extension_Pack-5.0.10-104061.vbox-extpack

sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.10-104061.vbox-extpack
