sudo apt update
sudo apt -y upgrade

# utility
sudo apt -y install ca-certificates build-essential libssl-dev zip make dos2unix curl jq apt-transport-https software-properties-common gnupg2 vim ssh-askpass

# programming languages
sudo apt -y -o install python3 python3-pip openjdk-16-jdk ruby ruby-dev
sudo apt -y -o install node-gyp

# go
curl -L https://storage.googleapis.com/golang/go1.15.6.linux-amd64.tar.gz | sudo tar xz -C /usr/local/

# dotnet
sudo apt-add-repository https://packages.microsoft.com/config/ubuntu/20.10/prod
sudo apt update
sudo apt install packages-microsoft-prod dotnet-sdk-3.1

# nvm
npm install -g n

# cloud tools
sudo apt install awscli

export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt update && sudo apt install -y google-cloud-sdk

# timezone
sudo dpkg-reconfigure tzdata

# git configs
git config --global url."git@gitlab.com:".insteadOf "https://gitlab.com/"
git config --global url."git@github.com:".insteadOf "https://github.com/"
git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"