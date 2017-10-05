## Building xmrMiner on ocho at Fedora 25

- installed legacy [CUDA Toolkit 8.0 GA2](https://developer.nvidia.com/cuda-toolkit-archive)
    - [install.log](ocho.install.log)
- hacked [host_config.h](/usr/local/cuda-8.0/targets/x86_64-linux/include/host_config.h)
- hacked [math_functions.h](/usr/local/cuda-8.0/targets/x86_64-linux/include/math_functions.h)

- [ocho.sh](ocho.sh) builds and runs the cuda enabled miner
    - uses kraken address 4GdoN7NCTi8a5gZug7PrwZNKjvHFmKeV11L6pNJPgj5QNEHsN6eeX3DaAQFwZ1ufD4LYCZKArktt113W7QjWvQ7CWC3CgbYGvLw6R1DiHi
    - uses [xmrpool.eu](https://web.xmrpool.eu/#getting_started)

