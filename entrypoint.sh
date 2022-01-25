#!/usr/bin/env sh

env

if [ -n "${INPUT_DEBUG}" ]; then
  set -x
fi

mkdir -p /usr/share/nginx/html/apis/
find "${INPUT_DIR}" -name "${INPUT_PATTERN}" -type f -exec cp --parents "{}" /usr/share/nginx/html/apis/  \;

find /usr/share/nginx/html/

SWAGGER_CONFIG=$(
  cd /usr/share/nginx/html/apis/
  find . -type f -maxdepth 3 -name "${INPUT_PATTERN}" | sed 's/.//' | sort | while read line; do
    echo "{\"name\":\"${line:13}\",\"url\":\"apis${line}\"}"
  done | tr '\n' ',' | sed 's/.$//' | sed 's/$/]}/' | sed 's/^/{"urls":[/'
)

export FIRST_PWD=$(pwd)

cd /
chmod +x /run.sh
/run.sh

echo "$SWAGGER_CONFIG" > /usr/share/nginx/html/swagger-config.json

cd "$FIRST_PWD"
mkdir -p ./swagger-ui/
cp -r /usr/share/nginx/html/* ./swagger-ui/
#git config --local user.email "blademainer@gmail.com"
#git config --local user.name "blademainer"
#[ -d "$PR_NUMBER" ] || mkdir "$PR_NUMBER"
#mv pkg "$PR_NUMBER"
#git add "$PR_NUMBER" doc lib
#git commit -m "Update documentation"
#
