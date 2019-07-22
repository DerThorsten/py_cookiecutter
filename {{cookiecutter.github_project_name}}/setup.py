#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""The setup script."""
import sys

from setuptools import setup, find_packages

with open('README.rst') as readme_file:
    readme = readme_file.read()

requirements = [
    'click=6.0'
]

needs_pytest = {'pytest', 'test', 'ptr'}.intersection(sys.argv)
pytest_runner = ['pytest-runner'] if needs_pytest else []

setup_requirements = [
    #'pytest-runner'
] + pytest_runner

test_requirements = [
    'pytest'
]




setup(
    author="{{ cookiecutter.full_name.replace('\"', '\\\"') }}",
    author_email='{{ cookiecutter.email }}',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'Natural Language :: English',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
    ],
    description="{{ cookiecutter.description }}",
    entry_points={
        'console_scripts': [
            '{{ cookiecutter.python_package_name}}={{ cookiecutter.python_package_name}}.cli:main',
        ],
    },
    install_requires=requirements,
    long_description=readme,
    include_package_data=True,
    keywords='{{ cookiecutter.project_slug }}',
    name='{{ cookiecutter.python_package_name }}',
    packages=find_packages(include=['{{ cookiecutter.python_package_name }}']),
    setup_requires=setup_requirements,
    test_suite='tests',
    tests_require=test_requirements,
    url='https://github.com/{{ cookiecutter.github_user_name }}/{{ cookiecutter.github_project_name }}',
    version="0.1.0",
    zip_safe=False,
)
