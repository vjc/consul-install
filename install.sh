#!/bin/sh

##
## Script to help install consul.io
##

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

CONSUL_ZIP_URL="https://dl.bintray.com/mitchellh/consul/0.1.0_linux_amd64.zip"

cd $SCRIPT_DIR

test -f consul.zip || wget --output-document=consul.zip $CONSUL_ZIP_URL
test -x consul || unzip consul.zip
test -x /usr/local/bin/consul || sudo cp consul /usr/local/bin/consul
sudo chmod +x /usr/local/bin/consul

