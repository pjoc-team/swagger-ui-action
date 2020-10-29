#!/usr/bin/env bash

mkdir -p /apis/
find "${dir}" -name "${pattern}" -type f -exec cp "{}" /apis/  \;

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
[ -d "$PR_NUMBER" ] || mkdir "$PR_NUMBER"
mv pkg "$PR_NUMBER"
git add "$PR_NUMBER" doc lib
git commit -m "Update documentation"

