#!/usr/bin/env sh

mkdir -p /usr/share/nginx/html/apis/
mkdir -p ./swagger-ui/
find "${dir}" -name "${pattern}" -type f -exec cp "{}" /usr/share/nginx/html/apis/  \;

find /usr/share/nginx/html/apis/

SWAGGER_CONFIG=$(
  cd /usr/share/nginx/html/apis/
  find . -type f -name "${pattern}" | sed 's/.//' | sort | while read line; do
    echo "{\"name\":\"${line:1}\",\"url\":\"/apis${line}\"}"
  done | tr '\n' ',' | sed 's/.$//' | sed 's/$/]}/' | sed 's/^/{"urls":[/'
)

echo "$SWAGGER_CONFIG" > /usr/share/nginx/html/apis/swagger-config.json

cp -r /usr/share/nginx/html/* ./swagger-ui/
#git config --local user.email "blademainer@gmail.com"
#git config --local user.name "blademainer"
#[ -d "$PR_NUMBER" ] || mkdir "$PR_NUMBER"
#mv pkg "$PR_NUMBER"
#git add "$PR_NUMBER" doc lib
#git commit -m "Update documentation"
#
