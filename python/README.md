# air2stream python wrapper for fortran

## Installing on a Linux machine from source

Assumption: you have an environment (conda or venv or whatever) where you can install packages.

```sh
which gfortran

mkdir -p ${HOME}/src
cd ${HOME}/src
git clone https://github.com/jmp75/air2stream.git
a2s_src=${HOME}/src/air2stream
cd ${a2s_src}
git branch -a
git checkout f90wrap
```

Using your py package environment (mamba or pip or whatever)

```sh
mamba install f90wrap
# if need be, to build the package wheel
mamba install wheel twine
```

```sh
./regen_wrapper.sh 
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
