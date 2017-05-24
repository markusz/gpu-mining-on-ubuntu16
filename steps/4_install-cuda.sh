#!/usr/bin/env bash
# Run as sudo su

#dpkg might take a long time
dpkg -i ~/mining/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb

apt-get update
apt-get install cuda-toolkit-8-0
usermod -a -G video $(whoami)
echo "" >> ~/.bashrc
echo "export PATH=/usr/local/cuda-8.0/bin:$PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda8.0/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "-----------------------------------------------"
echo "| CUDA setup finished - A RESTART IS REQUIRED |"
echo "| Reboot machine and continue with next step  |"
echo "-----------------------------------------------"

