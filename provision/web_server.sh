#!/usr/bin/env bash
# Base utils
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-get install -y curl

# Consul Installation
sudo apt-get update
sudo apt-get install -y unzip
sudo wget https://releases.hashicorp.com/consul/1.0.6/consul_1.0.6_linux_amd64.zip
sudo unzip consul_1.0.6_linux_amd64.zip -d .
sudo mv ./consul /usr/local/bin/consul
sudo rm consul_1.0.6_linux_amd64.zip
mkdir -p /tmp/consul.server

# Install nodejs & yarn
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install --no-install-recommends yarn

# Copy service definitions
mkdir -p /etc/consul.d
cp /tmp/web.server/web.service.hcl /etc/consul.d/web.service.hcl

# Consul Agent Client Service
cp /tmp/web.server/consul.service /etc/systemd/system/consul.service
chmod +x /tmp/web.server/start_consul.sh
sudo systemctl start consul

# App setup
cd /tmp/app
yarn install
npm start
