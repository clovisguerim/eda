from setuptools import setup

setup(
   name='dunham-module',
   version='0.0.0',
   description='Found a gReat mechanIsm to data aNalysis ensurinG Excellence (FRINGE)',
   author='Clovis',
   author_email='clovisguerim@gmail.com',
   entry_points={
      'console_scripts': [
         'dunham-module = usage.cli:main'
      ]
   },
   packages=['dunham-module'],  #same as name
)