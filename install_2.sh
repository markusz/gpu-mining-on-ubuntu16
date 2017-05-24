#!/usr/bin/env bash
# Run as user after restart
cd /usr/local/cuda/samples/1_Utilities/deviceQuery
make
/usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery
cd ~/mining
git clone https://github.com/tpruvot/ccminer
cd ccminer
git checkout linux
./autogen.sh
./configure
make
sudo make install