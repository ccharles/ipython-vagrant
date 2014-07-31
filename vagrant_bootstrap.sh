#!/bin/bash

apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y python-pip

# Use Ubuntu's Python packages since some libraries take forever to build
# (I'm looking at you, scipy).
apt-get install -y ipython
apt-get install -y ipython-notebook
apt-get install -y python-jinja2
apt-get install -y python-matplotlib
apt-get install -y python-numpy
apt-get install -y python-pandas
apt-get install -y python-scipy
apt-get install -y python-tornado
apt-get install -y python-zmq
