#! /bin/bash
sudo yum install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
yum update
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
    cd xmr-stak/build
    cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd ~/sh/xmr-stak/build/bin
cp ~/sh/input.txt ~/sh/xmr-stak/build/bin/input.txt
cat "input.txt" | ./xmr-stak
