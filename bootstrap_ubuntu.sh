sudo apt update
sudo apt -y upgrade

# utility
sudo apt -y install ca-certificates build-essential libssl-dev zip make dos2unix curl jq

# programming languages
sudo apt -y -o Dpkg::Options::="--force-overwrite" install python python-pip python3 python3-pip openjdk-9-jdk ruby ruby-dev
sudo apt -y -o install node-gyp

# go
curl -L https://storage.googleapis.com/golang/go1.10.2.linux-amd64.tar.gz | sudo tar xz -C /usr/local/
# hugo
curl -L https://github.com/gohugoio/hugo/releases/download/v0.34/hugo_0.34_Linux-64bit.tar.gz | sudo tar -xvz -C /usr/local/bin

# dotnet
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install aspnetcore-runtime-2.1

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

# docker-sync
sudo gem install docker-sync

# protoc
curl -L https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip 
sudo unzip /usr/local/
sudo chmod a+x /usr/local/bin/protoc
source ~/.bashrc

# watchexec
sudo curl -L https://github.com/mattgreen/watchexec/releases/download/1.8.6/watchexec-1.8.6-x86_64-unknown-linux-gnu.tar.gz | sudo tar -xz -C /usr/local/bin --strip-components=1

# ocaml
wget http://caml.inria.fr/pub/distrib/ocaml-4.06/ocaml-4.06.0.tar.gz
tar xvf ocaml-4.06.0.tar.gz
cd ocaml-4.06.0
./configure
make world
make opt
umask 022
sudo make install
sudo make clean

# unison
wget https://github.com/bcpierce00/unison/archive/v2.51.2.tar.gz
tar xvf v2.51.2.tar.gz
cd unison-2.51.2
make UISTYLE=text
sudo cp src/unison /usr/local/bin/unison
sudo cp src/unison-fsmonitor /usr/local/bin/unison-fsmonitor

# timezone
sudo dpkg-reconfigure tzdata

# upgrade Ubuntu OS
# sudo -S apt-mark hold procps strace sudo
# sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade
