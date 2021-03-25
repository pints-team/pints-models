#!/bin/bash

# Update apt-get
apt-get -qq update;

# Install Sundials (for CVODE)
apt-get install libopenblas-dev liblapack-dev libatlas-base-dev gfortran intel-mkl-2019.4-070
apt-get install -y libsundials-dev;
