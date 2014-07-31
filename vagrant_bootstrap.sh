#!/bin/bash

apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y python-pip

pip install -r /vagrant/requirements.txt
