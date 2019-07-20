#!/bin/bash

clang -I/usr/src/linux-headers-5.0.0-15/include -I/usr/src/linux-headers-5.0.0-15/arch/x86/include/uapi -O2 -target bpf -c hello_world_kern.c -o hello_world_kern.o

gcc -O2 -Wall -g -lelf -L/usr/lib/x86_64-linux-gnu/ -o hello_world_user hello_world_user.c bpf_load.c libbpf.c

