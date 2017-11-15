#!/bin/bash

if [ -x build/xmrMiner ]; then
   true;
else
   mkdir build;
   ( cd build && rm -f CMakeCache.txt && cmake -DCUDA_ARCH=20 -DCMAKE_BUILD_TYPE=Release .. && make -j6 );
fi

./build/xmrMiner --donate=0 --launch=32x16 --bfactor=10 --bsleep=10 --url=stratum+tcp://xmrpool.eu:5555 --keepalive --pass=x --user=45qYEXVGwo12ZaKHzDSB4f7ktjMysjddFCffQLrjs2yT5U37zHgYpPNWdAKc9QKLXST1zyXrouNJTQxeYP1JT1yhUjQbor6+ocho

