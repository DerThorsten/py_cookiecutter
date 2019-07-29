import unittest
import {{cookiecutter.python_package_name}}



class TestVersion(object):
    
    def test_version(self):
        v = {{cookiecutter.python_package_name}}.__version__
        assert v == '0.1.0'