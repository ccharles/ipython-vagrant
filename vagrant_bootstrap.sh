#!/bin/bash

apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y python-pip

# Required to build scipy from source
apt-get install -y gfortran
apt-get install -y libblas-dev
apt-get install -y liblapack-dev

pip install -r /vagrant/requirements.txt
