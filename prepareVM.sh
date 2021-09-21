#!bin/sh
#Prepare VM
yum update -y 
npm install -g npm@latest

curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
yum install -y gcc-c++ make



npm install -g contentful-cli
npm audit fix --force

git clone https://github.com/YakirOr/the-example-app.nodejs.git
cd the-example-app.nodejs/
npm install
npm audit fix --force

npm run start:dev
