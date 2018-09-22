
./bootstrap_common.sh

# docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update && sudo apt -y install docker-ce
# WSL only
# echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.profile
