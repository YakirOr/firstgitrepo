#!bin/sh
#Prepare VM
yum update -y 
pwd
pwd
npm install -g npm@latest
pwd
pwd
pwd

curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
pwd
yum install -y nodejs
pwd
yum install -y gcc-c++ make



npm install -g contentful-cli
npm audit fix --force

cd /root
git clone https://github.com/YakirOr/the-example-app.nodejs.git
cd the-example-app.nodejs/
npm install
npm audit fix --force

npm run start:dev
