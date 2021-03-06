=================================================
Python Cookiecutter
=================================================


.. image:: https://readthedocs.org/projects/py-cookiecutter/badge/?version=latest
    :target: https://py-cookiecutter.readthedocs.io/en/latest/?badge=latest
    :alt: Documentation Status
      

.. image:: https://travis-ci.org/DerThorsten/py_cookiecutter.svg?branch=master
    :target: https://travis-ci.org/DerThorsten/py_cookiecutter

.. image:: https://circleci.com/gh/DerThorsten/py_cookiecutter/tree/master.svg?style=svg
    :target: https://circleci.com/gh/DerThorsten/py_cookiecutter/tree/master

.. image:: https://dev.azure.com/derthorstenbeier/py_cookiecutter/_apis/build/status/DerThorsten.py_cookiecutter?branchName=master
    :target: https://dev.azure.com/derthorstenbeier/py_cookiecutter/_build/latest?definitionId=1&branchName=master




Demo Project
------------------------
Have a look at `github.com/DerThorsten/pytools <https://github.com/DerThorsten/py_tools>`_, an
unmodified example project created with this py_cookiecutter.



Usage
-------------------------



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


















Firs Steps after Project is Generated
********************************************

Enable Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To enable the continuous integration :
    * add your project repository to your Travis-CI_ account
    * add your project repository to your Circle-CI_ account
    * add your project repository to your Azure-Pipelines_ account

The next change to your repository should trigger builds on the CI servers.

Enable Continuous PyPi Deployment with Travis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
To make the package available on PyPI, the .travis.yml
file needs to be modified.
On the following block at the end of the file, :code:`PLEASE_REPLACE_ME`
needs to be replaced with your encrypted PyPI password.
To properly encrypt your password use the Travis-cmd-tools_.
After that, each new git-tag_ will trigger the deployment of a new version on PyPI.


.. code-block:: yaml
    
    deploy:
      provider: pypi
      distributions: sdist bdist_wheel
      user: {{ cookiecutter.pypi_username }}
      password:
        secure: PLEASE_REPLACE_ME
      on:
        tags: true
        repo: {{ cookiecutter.github_username }}/{{ cookiecutter.github_project_name }}
        python: 3.6



Enable Continuous Documentation on Readthedocs.org
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



.. _Circle-CI: https://circleci.com/
.. _Azure-Pipelines: https://azure.microsoft.com/de-de/services/devops/pipelines/
.. _Travis-CI: http://travis-ci.org/
.. _Tox: http://testrun.org/tox/
.. _Sphinx: http://sphinx-doc.org/
.. _ReadTheDocs: https://readthedocs.io/
.. _`pyup.io`: https://pyup.io/
.. _Bumpversion: https://github.com/peritus/bumpversion
.. _Punch: https://github.com/lgiordani/punch
.. _PyPi: https://pypi.python.org/pypi
.. _Travis-cmd-tools: https://docs.travis-ci.com/user/encryption-keys/
.. _git-tag: https://git-scm.com/book/en/v2/Git-Basics-Tagging