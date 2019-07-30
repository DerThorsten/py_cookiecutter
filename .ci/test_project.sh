#!/bin/bash
TEMPLATE_FOLDER=$1
echo "------------------------------------------------------------"
echo "create py_cookiecutter-dev-requirements conda env"
echo "------------------------------------------------------------"
conda env create -f py_cookiecutter-dev-requirements.yml || exit 1


echo "------------------------------------------------------------"
echo "activate py_cookiecutter-dev-requirements conda env"
echo "------------------------------------------------------------"
source activate py_cookiecutter-dev-requirements || exit 1


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
cd py_tools || exit 1


echo "------------------------------------------------------------"
echo "chmod +x .ci/test_project.sh || exit 1" 
echo "------------------------------------------------------------"
chmod +x .ci/test_project.sh || exit 1


echo "------------------------------------------------------------"
echo "./.ci/test_project.sh || exit 1"
echo "------------------------------------------------------------"
./.ci/test_project.sh || exit 1
