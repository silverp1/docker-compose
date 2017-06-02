FROM docker:latest

ENV COMPOSE_VERSION 1.14.0-rc1

RUN set -ex; \
    apk add --no-cache --virtual .fetch-deps \
		curl \
    ; \
    curl -fL -o /usr/local/bin/docker-compose \
         https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/run.sh \
    ; \
    chmod +x /usr/local/bin/docker-compose; \
    apk del .fetch-deps;
