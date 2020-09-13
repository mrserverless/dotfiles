
# AMD drivers
sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt update && sudo apt upgrade

sudo apt install libvulkan1 mesa-vulkan-drivers vulkan-utils

# if using pop_os, it will have the ubuntu version installed already: mesa-vulkan-drivers is already the newest version (20.0.8-0ubuntu1~20.04.1).
# mesa-vulkan-drivers set to manually installed.

# Get:1 http://ppa.launchpad.net/oibaf/graphics-drivers/ubuntu focal/main i386 mesa-vulkan-drivers i386 20.3~git2009050730.57fba8~oibaf~f [4,443 kB]
# Get:2 http://ppa.launchpad.net/oibaf/graphics-drivers/ubuntu focal/main amd64 mesa-vulkan-drivers amd64 20.3~git2009050730.57fba8~oibaf~f [4,446 kB]



# NVidia drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt upgrade
sudo apt install nvidia-graphics-drivers-396 nvidia-settings vulkan vulkan-utils