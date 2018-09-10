sudo apt update
sudo apt -y upgrade

# utility
sudo apt -y install ca-certificates build-essential libssl-dev zip make dos2unix curl jq apt-transport-https software-properties-common gnupg2 vim

# programming languages
sudo apt -y install python python-pip python3 python3-pip

# go
curl -L https://storage.googleapis.com/golang/go1.11.linux-amd64.tar.gz | sudo tar xz -C /usr/local/

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# dev tools
pip3 install awscli
go get -u github.com/remind101/assume-role
go get -u github.com/golang/dep/cmd/dep
go get -u github.com/jmespath/go-jmespath

# docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update && sudo apt -y install docker-ce
echo "export DOCKER_HOST='tcp://0.0.0.0:2375'" >> ~/.profile

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt update && sudo apt install -y google-cloud-sdk

# oh-my-bash
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# jmespath
sudo wget https://github.com/jmespath/jp/releases/download/0.1.2/jp-linux-amd64 -O /usr/local/bin/jp \
&& sudo chmod +x /usr/local/bin/jp

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

# terraform
curl -L https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.8_linux_amd64.zip | unzip | sudo mv terraform /usr/local/bin

# upgrade OS
# sudo -S apt-mark hold procps strace sudo
# sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade
