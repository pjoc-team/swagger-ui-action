# Container image that runs your code
FROM swaggerapi/swagger-ui:v4.9.1

ENV CONFIG_URL swagger-config.json
# ENV URLS_PRIMARY_NAME users.yml

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY run.sh /run.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
