#!/bin/bash

# install https://www.citrix.com/en-au/downloads/workspace-app/linux/workspace-app-for-linux-latest.html
# update cacerts as per https://askubuntu.com/questions/40723/how-do-i-install-citrix-receiver

sudo ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts