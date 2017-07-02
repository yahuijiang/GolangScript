#!/bin/bash

#check the status of golang

go env 2> /dev/null

if [ $? -eq 0 ]
then
  echo "golang installed, this step will skip"
else
  echo "golang has not install, start install golang, please waite"
  #Download package
  #wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
  #unzip the package
  tar -zxvf go1.8.3.linux-amd64.tar.gz -C /usr/local/
  #config the golang env
  echo 'export GOROOT=/usr/local/go' >> ~/.bashrc 
  echo 'export GOBIN=$GOROOT/bin' >> ~/.bashrc
  echo 'export PATH=$PATH:$GOBIN' >> ~/.bashrc
  echo 'export GOPATH=~/workspace/golang/' >> ~/.bashrc
  echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bashrc
  source ~/.bashrc
  go env 2> /dev/null
  if [ $? -eq 0 ]
  then 
    echo "install successfully. "
  else 
    echo "install failed"
  fi
fi

