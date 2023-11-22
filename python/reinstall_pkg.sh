#!/bin/bash

cd ${HOME}/src/air2stream/python 
python setup.py bdist_wheel

pip uninstall --yes air2stream
pip install -e .