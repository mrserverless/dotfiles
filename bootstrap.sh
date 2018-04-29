sudo apt update
sudo apt -y upgrade

# utility
sudo apt -y install node-gyp ca-certificates build-essential libssl-dev zip make dos2unix

# programming languages
sudo apt -y -o Dpkg::Options::="--force-overwrite" install python python-pip python3 python3-pip openjdk-9-jdk ruby

# go
curl -L https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz | sudo tar xz -C /usr/local/
# hugo
curl -L https://github.com/gohugoio/hugo/releases/download/v0.34/hugo_0.34_Linux-64bit.tar.gz | sudo tar -xvz -C /usr/local/bin

# dotnet
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get -y install dotnet-sdk-2.1.4

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# dev tools
pip3 install awscli
go get -u github.com/remind101/assume-role
go get -u github.com/golang/dep/cmd/dep
go get -u github.com/awslabs/aws-sam-local

# docker
sudo apt-get install apt-transport-https software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce
sudo usermod -aG docker $(whoami)
echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.bashrc

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# protoc
curl -L https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip 
sudo unzip /usr/local/
sudo chmod a+x /usr/local/bin/protoc
source ~/.bashrc

# watchexec
sudo curl h -L https://github.com/mattgreen/watchexec/releases/download/1.8.6/watchexec-1.8.6-x86_64-unknown-linux-gnu.tar.gz | sudo tar -xz -C /usr/local/bin --strip-components=1

# upgrade Ubuntu OS
# sudo -S apt-mark hold procps strace sudo
# sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade