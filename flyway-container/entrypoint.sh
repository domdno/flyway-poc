#!/usr/bin/env bash
set -euo pipefail

# get variables from .env file if .env is present
if [ -f .env ]; then
  set -a
  source .env
  set +a
fi

# build flyway variables
export FLYWAY_URL="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}"
export FLYWAY_USER="${DB_USER}"
export FLYWAY_PASSWORD="${DB_PASS}"

# exec with args
exec flyway "$@"