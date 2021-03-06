#!/bin/bash
#
cp fd1d_wave.hpp /$HOME/include
#
g++ -c -g -I /$HOME/include fd1d_wave.cpp >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling fd1d_wave.cpp"
  exit
fi
rm compiler.txt
#
mv fd1d_wave.o ~/libcpp/$ARCH/fd1d_wave.o
#
echo "Library installed as ~/libcpp/$ARCH/fd1d_wave.o"
