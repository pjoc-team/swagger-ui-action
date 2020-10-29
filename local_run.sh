#!/usr/bin/env bash
docker build . -t pjoc-team/swagger-ui-action
docker run --rm -it -v "$(pwd):/tmp" -w /tmp -e INPUT_DIR="./" -e INPUT_PATTERN="*.json" pjoc-team/swagger-ui-action
