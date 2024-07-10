#!/bin/bash
gcc -shared -fPIC src/rs232.c src/rs232_posix.c -I include -o librs232.so
gcc src/rs232_test.c librs232.so -I include -o test
gcc -fPIC -shared bindings/lua/luars232.c src/rs232.c src/rs232_posix.c -I include -llua -o luars232.so
