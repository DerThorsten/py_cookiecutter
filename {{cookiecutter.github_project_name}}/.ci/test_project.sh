#!/bin/bash

echo "------------------------------------------------------------"
echo "template folder dir: $TEMPLATE_FOLDER"
echo "conda source command: $SOURCE activate"
echo "------------------------------------------------------------"


echo "------------------------------------------------------------"
echo "create {{cookiecutter.package_name}}-dev-requirements conda env"
echo "------------------------------------------------------------"
conda env create -f {{cookiecutter.package_name}}-dev-requirements.yml || exit 1

echo "------------------------------------------------------------"
echo "activate {{cookiecutter.package_name}}-dev-requirements conda env"
echo "------------------------------------------------------------"
source activate {{cookiecutter.package_name}}-dev-requirements || exit 1

echo "------------------------------------------------------------"
echo "run pytest"
echo "------------------------------------------------------------"
python -m pytest


echo "------------------------------------------------------------"
echo "install via setup.py"
echo "------------------------------------------------------------"
python setup.py install

