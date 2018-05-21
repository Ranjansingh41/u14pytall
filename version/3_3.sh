#!/bin/bash -e

echo "================= Installing Python 3.3 ==================="
sudo apt-get install -y \
  python3.3=3.3*	 \
  python3-dev=3.4* \
   python-pip=1.5* \
  python-virtualenv=1.11*

# Install virtualenv
virtualenv -p python $HOME/venv/3.3
# Install pip packages
. $HOME/venv/3.3/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate

echo "================= Successfully Installed Python 3.3 ==================="
