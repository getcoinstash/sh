#! /bin/bash
sudo apt install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
apt update
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
    cd xmr-stak/build
    cmake .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd ~/sh/xmr-stak/build/bin
./xmr-stak
monero
