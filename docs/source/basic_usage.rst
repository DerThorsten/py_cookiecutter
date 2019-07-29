Basic usage
===========

Install cookiecutter
**********************
Install _cookiecutter via conda (recommended)

.. code-block:: shell

    $ conda install cookiecutter -c conda-forge

or

.. code-block:: shell

    $ pip install cookiecutter

Create Project With Cookiecutter
********************************************

After installing cookiecutter, use the cpp-cookiecutter:

.. code-block:: shell

    $ cookiecutter https://github.com/DerThorsten/py_cookiecutter

There you need to specify the variables of the cpp_cookiecutter which are explained
in the table below:

.. list-table:: Title
   :widths: 25 25 50
   :header-rows: 1

   * - Cookiecutter variable
     - Description
     - Default
   * - full_name
     - Author Name
     - John Doe
   * - email                        
     - email of author
     - john@doe.de
   * - project_name                 
     - name of the project
     - pytools
   * - project_slug                 
     - url friendly version of package name
     - pytools
   * - package_name                 
     - package name
     - pytools
   * - conda_package_name           
     - conda package name
     - pytools
   * - readthedocs_package_name     
     - readthedocs package name
     - pytools
   * - github_project_name          
     - name of the project on github
     - pytools
   * - python_package_name          
     - name of the python package
     - pytools
   * - github_user_name             
     - authors github user name
     - JohnDoe
   * - azure_user_name              
     - authors user name on microsoft azure
     - JohnDoe
   * - open_source_license          
     - which license shall be used
     - MIT LICENCE
   * - summary                      
     - a short summary of the project
     - pytools is a modern C++ Library
   * - description                  
     - a short description of the project
     - pytools is a modern python Library   


Install Generated Project with setup.py
********************************************

Assuming your created a package  named pytools the following installs the project using :code:`setup.py`

.. code-block:: shell

    cd pytools
    python setup.py install
    


