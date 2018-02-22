#!/usr/bin/env bash

# Consul Installation
sudo apt-get update
sudo apt-get install -y unzip
sudo wget https://releases.hashicorp.com/consul/1.0.6/consul_1.0.6_linux_amd64.zip
sudo unzip consul_1.0.6_linux_amd64.zip -d .
sudo mv ./consul /usr/local/bin/consul
sudo rm consul_1.0.6_linux_amd64.zip
mkdir -p /tmp/consul.server

# systemd
cp /tmp/consul.server/consul.service /etc/systemd/system/consul.service
chmod +x /tmp/consul.server/scripts/start_consul.sh
sudo systemctl start consul
