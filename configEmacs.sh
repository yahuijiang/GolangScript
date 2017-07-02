#!/bin/bash

# please install emacs >24 firstly


#test the status of emacs
emacs --help 2> /dev/null

if [ $? -eq 0 ]
then 
   echo "emacs installed, continue..."
else 
   echo "emacs has not insalled, exit!"
   exit 0
fi

emacsconfigfile="~/.emacs.d"
if [ -f "$emacsconfigfile" ]
then
  echo "backup the original emacs config"
  mv ~/.emacs.d ~/.emacs.d.bak
fi
#config emacs, install some package

#git clone git@github.com:yahuijiang/emacsconfig.git ~/.emacs.d

sudo cp ./goext/* $GOBIN
