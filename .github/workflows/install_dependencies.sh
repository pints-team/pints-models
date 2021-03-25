#!/bin/bash

# Update apt-get
apt-get -qq update;

# Install Sundials (for CVODE)
apt-get install -y libopenblas-dev liblapack-dev
wget https://github.com/LLNL/sundials/releases/download/v5.1.0/sundials-5.1.0.tar.gz
tar xzf sundials-5.1.0.tar.gz
mkdir build-sundials-5.1.0
cd build-sundials-5.1.0/
cmake -DLAPACK_ENABLE=ON -DSUNDIALS_INDEX_SIZE=64 -DCMAKE_INSTALL_PREFIX=/usr/local/ ../sundials-5.1.0/
make install
export SUNDIALS_INST=/usr/local/
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
