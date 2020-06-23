#!/usr/bin/env bash
set -euo pipefail
[[ "${DEBUG:-false}" == "true" ]] && set -x

COMPOSE_FILES="-f docker-compose.yml -f 10-schema-registry.yml -f 11-schema-registry-ui.yml -f 20-kafka-connect.yml -f 21-kafka-connect-ui.yml -f 30-kafka-rest-proxy.yml -f 99-dev-ui.yml"
docker-compose ${COMPOSE_FILES} $@