#!/bin/bash

# please install emacs >24 firstly

#test the status of emacs
whereis emacs -b > /dev/null

if [ $? -eq 0 ]
then 
   echo "emacs installed, continue..."
else 
   echo "emacs has not insalled, exit!"
fi

#config emacs, install some package

git clone git@github.com:yahuijiang/emacsconfig.git

