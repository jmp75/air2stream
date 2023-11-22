"""Python package wrapper for air2stream fortran

"""

# Always prefer setuptools over distutils
from setuptools import setup
# To use a consistent encoding
from codecs import open
import os
import re


######################################
# Adapted from 
# https://github.com/jameskermode/f90wrap/issues/39#issuecomment-264652511
######################################
# from distutils.core import setup
from distutils.command.install import install as _install
from distutils.command.build import build as _build
# install shared library under python site-packages
# http://stackoverflow.com/a/18159969/2192272

_MODULE_NAME="a2s"
_LIB_NAME=f"_{_MODULE_NAME}.cpython-*-x86_64-linux-gnu"

def _post_install(dir):
    from subprocess import call
    cmd = ['cp', f'{_LIB_NAME}.so', dir]
    print(*cmd)
    call(cmd)

class install(_install):
    def run(self):
        _install.run(self)
        self.execute(_post_install, (self.install_lib,),
                     msg=f"Post-install : manually copying :{_LIB_NAME}.so under site-packages")

class build(_build):
    def run(self):
        _build.run(self)
        self.execute(_post_install, (self.build_lib,),
                     msg=f"Post-build : manually copying {_LIB_NAME}.so under site-packages")
######################################


here = os.path.abspath(os.path.dirname(__file__))

verstr = 'unknown'
VERSIONFILE = "air2stream/_version.py"
with open(VERSIONFILE, "r")as f:
    verstrline = f.read().strip()
    pattern = re.compile(r"__version__ = ['\"](.*)['\"]")
    mo = pattern.search(verstrline)
if mo:
    verstr = mo.group(1)
else:
    raise RuntimeError("Unable to find version string in %s." % (VERSIONFILE,))

with open(os.path.join(here, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()
    long_description_content_type='text/markdown'

REQUIREMENTS = ['f90wrap']

TEST_REQUIREMENTS = ['pytest',
                    #  'coveralls',
                    #  'pytest-cov',
                    #  'pytest-mpl'
                     ]

CLASSIFIERS = ['Development Status :: 3 - Alpha',
                'Intended Audience :: Developers',
                'Topic :: Software Development ',
                # 'License :: OSI Approved :: MIT License',
                'Operating System :: OS Independent',
                'Programming Language :: Python',
                'Programming Language :: Python :: 3'
                ]

setup(
    name='air2stream',
    version=verstr,
    description='Python wrapper around air2stream Fortran', 
    long_description=long_description,
    long_description_content_type=long_description_content_type,
    url='https://github.com/jmp75/air2stream',
    author='Jean-Michel Perraud',
    author_email='jean-michel.perraud@csiro.au',
    classifiers=CLASSIFIERS,
    keywords='water temperature',
    cmdclass={'install': install, 'build':build},
    packages=['air2stream', 'air2stream.native'],
    install_requires=REQUIREMENTS,
    project_urls={  # Optional
        'Bug Reports': 'https://github.com/jmp75/air2stream/issues',
        # 'Funding': 'https://donate.pypi.org',
        # 'Say Thanks!': 'http://saythanks.io/to/example',
        'Source': 'https://github.com/jmp75/air2stream',
    },
    include_package_data=False, #  
    package_data={'': []}
)
