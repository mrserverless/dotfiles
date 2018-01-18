#requires -v 3

if (Get-Command scoop -errorAction SilentlyContinue)
{
	write-host "scoop already installed"
} else {
	set-executionpolicy unrestricted -s cu
	iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}
# utils
scoop install git git-lfs 7zip curl sudo openssh openssl coreutils grep sed less which zip unzip tar gzip
[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')

scoop bucket add extras https://github.com/lukesampson/scoop-extras.git

# programming languages
scoop install python ruby go openjdk flatc protobuf

# rancher
scoop install rancher-compose

# dev tools
scoop install vagrant sublime-text winmerge hugo glide make vscode ngrok filezilla
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

# console theme - optinal
# scoop install concfg pshazz
# concfg import solarized small

