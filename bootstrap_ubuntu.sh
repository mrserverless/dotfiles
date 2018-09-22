
# docker
sudo apt-get install apt-transport-https software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce
sudo usermod -aG docker $USER
# WSL only
# echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.profile

# upgrade Ubuntu OS
# sudo -S apt-mark hold procps strace sudo
# sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade
