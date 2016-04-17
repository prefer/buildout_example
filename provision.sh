#!/usr/bin/env bash

# Get buildout bootstrap file and run
wget -O /tmp/bootstrap.py https://bootstrap.pypa.io/bootstrap-buildout.py
cd /vagrant/buildout_example
python /tmp/bootstrap.py

# Provision by buildout. For details see buildout.cfg
bin/buildout -U

# Run migration
bin/django-manage migrate --run-syncd