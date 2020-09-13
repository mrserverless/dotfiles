#!/bin/bash

# docker
sudo apt -y install docker.io
sudo usermod -aG docker $USER

# docker-compose
sudo apt install docker-compose