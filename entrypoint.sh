#!/usr/bin/env bash

mkdir -p /apis/
find "${dir}" -name "${pattern}" -type f -exec cp "{}" /apis/  \;

find /apis/

#git config --local user.email "blademainer@gmail.com"
#git config --local user.name "blademainer"
#[ -d "$PR_NUMBER" ] || mkdir "$PR_NUMBER"
#mv pkg "$PR_NUMBER"
#git add "$PR_NUMBER" doc lib
#git commit -m "Update documentation"
#
