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
sudo apt install apt-transport-https
sudo apt update
sudo apt install aspnetcore-runtime-2.1

# nvm
npm install -g n

# dev tools
sudo apt install awscli
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


# timezone
sudo dpkg-reconfigure tzdata

# visual studio code
sudo apt install code

# git configs
git config --global url."git@gitlab.com:".insteadOf "https://gitlab.com/"
git config --global url."git@github.com:".insteadOf "https://github.com/"
git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"

# DBeaver
sudo apt install dbeaver-ce