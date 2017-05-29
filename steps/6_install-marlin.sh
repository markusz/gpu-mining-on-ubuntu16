#!/usr/bin/env bash
# Run as sudo su

mkdir ~/mining/marlin
cd ~/mining/marlin
wget https://github.com/SiaMining/marlin/releases/download/v1.0.0/marlin-1.0.0-linux-amd64.tar.gz
tar -xzvf marlin-1.0.0-linux-amd64.tar.gz
./marlin/marlin -u ecd51dab6703b480ef60eb688598ff89898b9d4917e14c6367b24b3359d35448057cab48ccff.github -I 28
