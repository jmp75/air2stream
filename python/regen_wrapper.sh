#!/bin/bash

a2s_src=$1

# AIR2STREAM_MODULES.f90 first (I think) so that it creates commondata.mod needed by other source files, otherwise
# AIR2STREAM_MAIN.f90:3:5:
#     3 | USE commondata
#       |     1
# Fatal Error: Cannot open module file ‘commondata.mod’ for reading at (1): No such file or directory
# compilation terminated.
F90_FILES="AIR2STREAM_MODULES.f90 AIR2STREAM_MAIN.f90 AIR2STREAM_READ.f90 AIR2STREAM_RUNMODE.f90 AIR2STREAM_SUBROUTINES.f90"
OBJ_FILES="AIR2STREAM_MODULES.o AIR2STREAM_MAIN.o AIR2STREAM_READ.o AIR2STREAM_RUNMODE.o AIR2STREAM_SUBROUTINES.o"
MODULE_NAME=a2s
cd ${a2s_src}/src
rm f90wrap_*.f90 *.o
rm _${MODULE_NAME}*
rm ${MODULE_NAME}.py
rm -rf __pycache__
f90wrap -m ${MODULE_NAME} -k ../python/kind_map $F90_FILES
gfortran -c $F90_FILES -fPIC -ffree-form -ffree-line-length-0 -cpp -Wall -ggdb3
f2py-f90wrap -c -m _${MODULE_NAME} f90wrap_*.f90 $OBJ_FILES 

mkdir -p ${a2s_src}/python/air2stream/native 
cp ${a2s_src}/src/${MODULE_NAME}.py ${a2s_src}/python/air2stream/native/a2s.py 
cp ${a2s_src}/src/_${MODULE_NAME}.cpython-*-x86_64-linux-gnu.so ${a2s_src}/python 
