#!/usr/bin/env bash

apt-get update
apt-get install -y python-dev

wget -O /tmp/bootstrap.py https://bootstrap.pypa.io/bootstrap-buildout.py
cd /vagrant/buildout_example
python /tmp/bootstrap.py
bin/buildout