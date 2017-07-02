#!/bin/bash

#Download package
wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz

#unzip the package

tar -zxvf go1.8.3.linux-amd64.tar.gz -C /usr/local/go

#config the golang env

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc 
echo 'export GOBIN=$GOROOT/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$GOBIN' >> ~/.bashrc
echo 'export GOPATH=~/workspace/src/golang/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$GOPATH' >> ~/.bashrc

