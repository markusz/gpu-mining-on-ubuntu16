#!/usr/bin/env bash
# Run as sudo su
# Initial installation will fail, but also fix the issue causing it to fail
# After a restart, this will work

~/mining/NVIDIA-Linux-x86_64-375.66.run --accept-license --no-questions --disable-nouveau --no-install-compat32-libs
echo "---------------------------------------------------"
echo "| Disabled Nouveau Driver - A RESTART IS REQUIRED |"
echo "| Reboot machine and continue with next step      |"
echo "---------------------------------------------------"


