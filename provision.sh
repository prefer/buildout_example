#!/usr/bin/env bash

wget -O /tmp/bootstrap.py https://bootstrap.pypa.io/bootstrap-buildout.py
cd /vagrant/buildout_example
python /tmp/bootstrap.py
bin/buildout
bin/django-manage migrate