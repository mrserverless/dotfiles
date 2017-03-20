#requires -v 3

if (Get-Command scoop -errorAction SilentlyContinue)
{
	write-host "scoop already installed"
} else {
	set-executionpolicy unrestricted -s cu
	iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

# utils
scoop install 7zip curl sudo git git-lfs openssh openssl coreutils grep sed less which zip unzip tar gzip
[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')

# programming languages
scoop install python ruby go openjdk

# docker
# scoop install docker docker-compose docker-machine
scoop install rancher-compose

# dev tools
scoop install vagrant sublime-text winmerge hugo glide make vscode ngrok
pip install awscli

# entertainment
scoop install vlc

# dotnet
scoop install dotnet nuget

# vim
scoop install vim
'
set ff=unix

set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set backupdir=$TEMP
' | out-file ~/.vimrc -enc oem -append

# console theme
scoop install concfg pshazz
concfg import solarized small

