#!/bin/sh

# call ghc to generate exposed header
ghc export/HsExport.hs -i./src -odir ./tmp -hidir ./tmp -stubdir ./include

# build cxx lib
g++ -fPIC -c -I./include/ -I /usr/lib64/ghc-8.0.2/include CxxSrc/cxx.cpp 
g++ -fPIC   -shared -Wl,-soname,libCxx.so -o libCxx.so cxx.o
