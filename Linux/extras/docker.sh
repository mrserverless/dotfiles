#!/bin/bash

# docker
sudo apt -y install docker.io
sudo usermod -aG docker $USER

# docker-compose package
sudo apt install docker-compose

# docker-compose manual
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# podman
