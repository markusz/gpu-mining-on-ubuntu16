#!/usr/bin/env bash
# Run as sudo su

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
make install
# Start ccminer, if this works, than you are good to go with your own pool
ccminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u mail.markus.ziller+minergate@gmail.com -p x