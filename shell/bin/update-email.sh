#!/bin/bash
eval \`gnome-keyring-daemon\`
export GNOME_KEYRING_PID
export GNOME_KEYRING_SOCKET
/usr/bin/offlineimap -o -u ttyui #-a Gmail
/usr/local/bin/mu index -m /home/sean/Mail
