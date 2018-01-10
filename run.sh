#! /bin/bash
sudo apt-get install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo apt-get update
sudo git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
    cd xmr-stak/build
    cmake .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install | bash
cd ~/sh/xmr-stak/build/bin
cp ~/sh/input.txt ~/sh/xmr-stak/build/bin/input.txt
cat "input.txt" | ./xmr-stak
