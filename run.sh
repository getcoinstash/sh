#! /bin/bash
sudo apt-get install git nano libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev --assume-yes
sudo apt-get update
sudo git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install

cd
git clone https://github.com/getcoinstash/sh.git
cd ~/sh
cp ~/sh/input.txt ~/xmr-stak/build/bin/input.txt
cd ~/xmr-stak/build/bin
cat "input.txt" | ./xmr-stak
