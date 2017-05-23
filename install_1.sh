#!/usr/bin/env bash
# Run as sudo su
# Instance will restart
apt-get update && apt-get -y dist-upgrade
apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev
cd && wget http://us.download.nvidia.com/XFree86/Linux-x86_64/352.41/NVIDIA-Linux-x86_64-352.41.run
chmod +x NVIDIA-Linux-x86_64-352.41.run
./NVIDIA-Linux-x86_64-352.41.run --accept-license --no-questions --disable-nouveau --no-install-compat32-libs
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
apt-get update
apt-get install cuda-toolkit-8-0
usermod -a -G video $USER
echo "" >> ~/.bashrc
echo "export PATH=/usr/local/cuda-8.0/bin:$PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda8.0/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc
reboot