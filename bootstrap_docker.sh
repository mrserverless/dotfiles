#!/bin/bash

# docker
sudo apt -y install docker.io
sudo usermod -aG docker $USER

# docker-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose