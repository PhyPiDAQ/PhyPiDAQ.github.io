#!/bin/bash
#
# script to 
#  - clone PhyPiDAQ from gihub to git/PhyPiDAQ/
#  - install it on a fresh system
#  - copy configurations to user directory ~/PhyPi 
#
# ---------------------------------------------------

# get git repository with PhyPiDAQ code
cd
mkdir git
cd git
mkdir PhyPiDAQ
cd PhyPiDAQ
echo "retrieving https://github.com/PhyPiDAQ/PhyPiDAQ"
git clone https://github.com/PhyPiDAQ/PhyPiDAQ
 
# install  PhyPiDAQ and drivers for sensors
cd PhyPiDAQ
echo "setting up PhyPiDAQ on your system"
./installlibs.sh

# copy to user directory PhyPiDAQ
echo "copying to user directory ~/PhyPi"
./install_user.sh PhyPi

