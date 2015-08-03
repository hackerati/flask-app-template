import os
import sys
from setuptools import setup

setup(
    # Application name:
    name="flask-app-template",



    # Packages
    packages=["app"],

    # Include additional files into the package
    include_package_data=True,



    # long_description=open("README.txt").read(),

    # Dependent packages (distributions)
    install_requires=[
        "flask",
    ],
)
