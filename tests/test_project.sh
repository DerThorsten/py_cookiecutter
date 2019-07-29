#!/bin/bash


TEMPLATE_FOLDER=$1
SOURCE=$2

echo "------------------------------------------------------------"
echo "template folder dir: $TEMPLATE_FOLDER"
echo "conda source command: $SOURCE activate"
echo "------------------------------------------------------------"


echo "------------------------------------------------------------"
echo "create py_cookiecutter-dev-requirements conda env"
echo "------------------------------------------------------------"
conda env create -f py_cookiecutter-dev-requirements.yml || exit 1

echo "------------------------------------------------------------"
echo "activate py_cookiecutter-dev-requirements conda env"
echo "------------------------------------------------------------"
$SOURCE activate py_cookiecutter-dev-requirements || exit 1

echo "------------------------------------------------------------"
echo "take one step back"
echo "------------------------------------------------------------"
cd .. || exit 1

echo "------------------------------------------------------------"
echo "render coookiecutter template"
echo "------------------------------------------------------------"
cookiecutter $TEMPLATE_FOLDER --overwrite-if-exists --no-input || exit 1

echo "------------------------------------------------------------"
echo "go into pytools"
echo "------------------------------------------------------------"
cd pytools || exit 1

echo "------------------------------------------------------------"
echo "create pytools-dev-requirements conda env"
echo "------------------------------------------------------------"
conda env create -f pytools-dev-requirements.yml || exit 1

echo "------------------------------------------------------------"
echo "activate pytools-dev-requirements conda env"
echo "------------------------------------------------------------"
$SOURCE activate pytools-dev-requirements || exit 1



echo "------------------------------------------------------------"
echo "run pytest"
echo "------------------------------------------------------------"
make test || exit 1

echo "------------------------------------------------------------"
echo "run coverage"
echo "------------------------------------------------------------"
make coverage-no-html || exit 1

echo "------------------------------------------------------------"
echo "run docs"
echo "------------------------------------------------------------"
make docs || exit 1

echo "------------------------------------------------------------"
echo "make lint"
echo "------------------------------------------------------------"
make lint || exit 1


echo "------------------------------------------------------------"
echo "make dist"
echo "------------------------------------------------------------"
make dist || exit 1

echo "------------------------------------------------------------"
echo "make clean"
echo "------------------------------------------------------------"
make clean || exit 1

echo "------------------------------------------------------------"
echo "make help"
echo "------------------------------------------------------------"
make clean || exit 1


echo "------------------------------------------------------------"
echo "install via setup.py"
echo "------------------------------------------------------------"
python setup.py install || exit 1

