#!bin/sh
#Prepare VM
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
yum install -y gcc-c++ make

npm install -g npm@latest

npm install -g contentful-cli
npm audit fix --force

echo -----------------------------------------------NewStage


git clone https://github.com/YakirOr/the-example-app.nodejs.git

npm install --prefix ./the-example-app.nodejs
npm audit fix --force --prefix ./the-example-app.nodejs
npm audit fix --force --prefix ./the-example-app.nodejs

npm run start:dev --prefix ./the-example-app.nodejs
