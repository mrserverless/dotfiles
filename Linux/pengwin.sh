# uncomment to run peng-setup if you haven't done so
# but don't install the docker to windows bridge since we want to run our docker daemon within WSL
# pengwin-setup

# install debian maintained docker which works better with debian packaged dependencies 
sudo apt remove docker-ce docker-engine docker.io
sudo apt update
sudo apt install -y docker.io

# cgroupfs-mount
sudo usermod -aG docker $USER
sudo apt install cgroupfs-mount
