#!/usr/bin/env bash
# Run as sudo su
# Prepare apt-get

mkdir ~/mining
apt-get update && apt-get -y dist-upgrade
apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev