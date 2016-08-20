#requires -v 3

if (Get-Command scoop -errorAction SilentlyContinue)
{
	write-host "scoop already installed"
} else {
	iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
	set-executionpolicy unrestricted -s cu
}

# utils
scoop install 7zip curl sudo git openssh coreutils grep sed less which
[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')

# programming languages
scoop install python ruby go nodejs openjdk

# docker
scoop install docker docker-compose rancher-compose

# dev tools
scoop install vagrant apex sublime-text winmerge hugo glide
pip install awscli

# misc
scoop install vlc

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
