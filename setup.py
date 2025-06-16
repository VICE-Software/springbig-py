#!/usr/bin/env python3
"""
Script de instalación para el proyecto Springbig Py.
"""

from setuptools import setup, find_packages

setup(
    name="springbig-py",
    version="0.1.0",
    description="Herramientas para trabajar con datos de Springbig",
    author="Alphonse",
    packages=find_packages(),
    install_requires=[
        "pandas>=1.3.0",
        "openpyxl>=3.0.9",
        "deepdiff>=5.8.0",
        "argparse>=1.4.0",
        "matplotlib>=3.5.0",
        "networkx>=2.7.0",
        "seaborn>=0.11.0",
    ],
    python_requires=">=3.9",
)
