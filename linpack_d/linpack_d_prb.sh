#!/bin/bash
#
g++ -c -g -I/$HOME/include linpack_d_prb.cpp >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling linpack_d_prb.cpp"
  exit
fi
rm compiler.txt
#
g++ linpack_d_prb.o /$HOME/libcpp/$ARCH/linpack_d.o /$HOME/libcpp/$ARCH/blas1_d.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading linpack_d_prb.o."
  exit
fi
#
rm linpack_d_prb.o
#
mv a.out linpack_d_prb
./linpack_d_prb > linpack_d_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running linpack_d_prb."
  exit
fi
rm linpack_d_prb
#
echo "Program output written to linpack_d_prb_output.txt"
