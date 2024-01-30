# air2stream python wrapper for fortran

## Installing on a Linux machine from source

Assumption: you have an environment (conda or venv or whatever) where you can install packages. For instance and note for self, I use `conda activate hydrofc`.

```sh
which gfortran

mkdir -p ${HOME}/src
cd ${HOME}/src
# ssh-add
git clone https://github.com/jmp75/air2stream.git
a2s_src=${HOME}/src/air2stream
cd ${a2s_src}
git branch -a
git checkout f90wrap
```

## Installing with pip in the user directory

```sh
pip install f90wrap
pip install wheel twine
```

## EASI

Using [virtual environments in EASI](https://docs.csiro.easi-eo.solutions/user-guide/developers/jupyterlab/virtual-environment/)

```sh
MYENV=hm
python -m venv ~/venvs/$MYENV

realpath /env/lib/python3.10/site-packages > ~/venvs/$MYENV/lib/python3.10/site-packages/base_venv.pth

source ~/venvs/$MYENV/bin/activate

pip install f90wrap

python -m ipykernel install --user --name=$MYENV --display-name "a2s"

# may be needed to access some datasets (Andrew Freebairn uses it)
pip install pint_xarray
```

## Installing in a conda environment

```sh
mamba install f90wrap
# if need be, to build the package wheel
mamba install wheel twine
```

## Generating low-level wrappers, compiling and installing

The native library for the air2stream wrapper is dependent on the version of python, so we practicaly should create a wrapper rather than distribute via a pip server of sorts.

```sh
a2s_src=${HOME}/src/air2stream
./regen_wrapper.sh ${a2s_src}
# cheap check
ls *.so
```

```sh
cd ${HOME}/src/air2stream/python 
python setup.py bdist_wheel
pip uninstall --yes air2stream
pip install dist/air2stream-1.2.0-py2.py3-none-any.whl
```

Check you can load the package from `python`

```python
import air2stream
from air2stream.native import a2s
dir(a2s)
```

Next, you can open the sample notebook(s) in [../notebooks](../notebooks)
