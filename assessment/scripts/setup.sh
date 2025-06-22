#!/bin/bash
set -e

sudo yum update -y
sudo yum install -y docker curl git amazon-ssm-agent
sudo systemctl enable --now docker

# Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Wazuh Docker
mkdir -p /opt/wazuh && cd /opt/wazuh
curl -LO https://raw.githubusercontent.com/wazuh/wazuh-docker/main/docker-compose.yml
sudo docker-compose up -d