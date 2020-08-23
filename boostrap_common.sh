sudo apt update
sudo apt -y upgrade

# utility
sudo apt -y install ca-certificates build-essential libssl-dev zip make dos2unix curl jq apt-transport-https software-properties-common gnupg2 vim gparted ssh-askpass

# programming languages
sudo apt -y -o Dpkg::Options::="--force-overwrite" install python python-pip python3 python3-pip openjdk-9-jdk ruby ruby-dev
sudo apt -y -o install node-gyp

# go
curl -L https://storage.googleapis.com/golang/go1.11.linux-amd64.tar.gz | sudo tar xz -C /usr/local/

# hugo
curl -L https://github.com/gohugoio/hugo/releases/download/v0.34/hugo_0.34_Linux-64bit.tar.gz | sudo tar -xvz -C /usr/local/bin

# dotnet
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install aspnetcore-runtime-2.1

# nvm
npm install -g n

# dev tools
pip3 install awscli
go get -u github.com/remind101/assume-role
go get -u github.com/golang/dep/cmd/dep
go get -u github.com/jmespath/go-jmespath
go get -u gopkg.in/mikefarah/yq.v2


# terraform
curl -L https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# gcloud
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt update && sudo apt install -y google-cloud-sdk

# docker-sync
sudo gem install docker-sync

# jmespath
sudo wget https://github.com/jmespath/jp/releases/download/0.1.2/jp-linux-amd64 -O /usr/local/bin/jp \
&& sudo chmod +x /usr/local/bin/jp

# protoc
curl -L https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip 
sudo unzip /usr/local/
sudo chmod a+x /usr/local/bin/protoc

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

# visual studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# git configs
git config --global url."git@gitlab.com:".insteadOf "https://gitlab.com/"
git config --global url."git@github.com:".insteadOf "https://github.com/"
git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"