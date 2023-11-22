#!/bin/bash

F90_FILES="AIR2STREAM_MAIN.f90  AIR2STREAM_MODULES.f90  AIR2STREAM_READ.f90  AIR2STREAM_RUNMODE.f90  AIR2STREAM_SUBROUTINES.f90"
OBJ_FILES="AIR2STREAM_MAIN.o  AIR2STREAM_MODULES.o  AIR2STREAM_READ.o  AIR2STREAM_RUNMODE.o  AIR2STREAM_SUBROUTINES.o"
MODULE_NAME=a2s
cd ${HOME}/src/air2stream/src
rm f90wrap_*.f90 *.o
rm _${MODULE_NAME}*
rm ${MODULE_NAME}.py
rm -rf __pycache__
f90wrap -m ${MODULE_NAME} -k ../python/kind_map $F90_FILES
gfortran -c $F90_FILES -fPIC -ffree-form -ffree-line-length-0 -cpp -Wall -ggdb3
f2py-f90wrap -c -m _${MODULE_NAME} f90wrap_*.f90 $OBJ_FILES > wrapping.log 2>&1 

mkdir -p ${HOME}/src/air2stream/python/air2stream/native 
cp ${HOME}/src/air2stream/src/${MODULE_NAME}.py ${HOME}/src/air2stream/python/air2stream/native/a2s.py 
cp ${HOME}/src/air2stream/src/_${MODULE_NAME}.cpython-*-x86_64-linux-gnu.so ${HOME}/src/air2stream/python 
