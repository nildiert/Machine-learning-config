#!/usr/bin/env bash

echo "Installing pip 19.1 ...................."

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
rm get-pip.py

echo "Finished installation of pip 19.1......."

echo "Check pip version (This should be 19 or newer)"
pip -V

echo "_____________________________________________"


echo "Installing numpy 1.15, scipy 1.3, and pycodestyle 2.5"

pip install --user numpy==1.15
pip install --user scipy==1.3
pip install --user pycodestyle==2.5

pip list | grep "numpy"
pip list | grep "scipy"
pip list | grep "pycodestyle"


echo "This should be:"
echo "numpy               1.15.0 "
echo "scipy               1.3.0"
echo "pycodestyle         2.5.0"

