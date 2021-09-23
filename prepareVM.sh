#!bin/sh
#Prepare VM
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
yum install -y gcc-c++ make

npm install -g npm@latest

npm install -g contentful-cli
npm audit fix --force
