#!/bin/bash

echo "Indexing new mail"
/usr/bin/notmuch new

echo "Tagging"
/usr/bin/notmuch tag --input=/home/sean/bin/email-tags.txt

echo "All done"
#notify-send Email "Updated emails"
