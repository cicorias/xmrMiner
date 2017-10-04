#!/bin/bash

if [ -x build/xmrMiner ]; then
   true;
else
   mkdir build;
   ( cd build && rm -f CMakeCache.txt && cmake -DCUDA_ARCH=20 -DCMAKE_BUILD_TYPE=Release .. && make -j6 );
fi

./build/xmrMiner --debug --debugDev --donate=0 --bfactor=10 --url=stratum+tcp://xmr.crypto-pool.fr:443 --keepalive --pass=x --user=4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWC3CgbYGvLw6R1DiHi
