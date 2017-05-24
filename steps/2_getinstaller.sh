#!/usr/bin/env bash
# Run as sudo su
# Get nvidia linux driver & CUDA

cd ~/mining && wget http://us.download.nvidia.com/XFree86/Linux-x86_64/375.66/NVIDIA-Linux-x86_64-375.66.run
chmod +x ~/mining/NVIDIA-Linux-x86_64-375.66.run

cd ~/mining && wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb



