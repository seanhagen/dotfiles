#!/bin/bash
source $HOME/.Xdbus
/usr/bin/offlineimap -o -u ttyui #-a Gmail
/usr/local/bin/mu index -m /home/sean/Mail
