#!/bin/bash

# 64bit
# make mingw CC=x86_64-w64-mingw32-gcc
x86_64-w64-mingw32-gcc -fPIC -shared -DRS232_EXPORT src/rs232.c src/rs232_windows.c -I include -o librs232.dll
x86_64-w64-mingw32-gcc src/rs232_test.c librs232.dll -I include -o test.exe
x86_64-w64-mingw32-gcc -fPIC -shared -DRS232_EXPORT bindings/lua/luars232.c src/rs232.c src/rs232_windows.c -I include -llua -o luars232.dll
#x86_64-w64-mingw32-gcc -fPIC -shared -DRS232_EXPORT bindings/lua/luars232.c librs232.dll -I include -llua -o luars232.dll

# 32bit
# make mignw CC=i686-w64-mingw32-gcc
#i686-w64-mingw32-gcc -shared -fPIC -DRS232_EXPORT src/rs232.c src/rs232_windows.c -I include -o librs232.dll
#i686-w64-mingw32-gcc src/rs232_test.c librs232.dll -I include -o test.exe
#i686-w64-mingw32-gcc -fPIC -shared -DRS232_EXPORT bindings/lua/luars232.c src/rs232.c src/rs232_windows.c -I include -llua -o luars232.dll
