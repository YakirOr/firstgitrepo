#!bin/sh
#Prepare VM
yum install -y sudo
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
yum install -y gcc-c++ make

npm install -g npm@latest

echo---------------------------------------------------
npm --version
node --version
echo---------------------------------------------------

npm install -g contentful-cli

