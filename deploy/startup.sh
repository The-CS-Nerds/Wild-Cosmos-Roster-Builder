#!/usr/bin/env bash
set -o pipefail

if touch global.env; then
  echo "global.env has been created"
else
  echo "failed to create global.env"
  exit 1
fi

cp example.env global.env
echo "POSTGRES_PASSWORD=$(openssl rand -base64 32 | tr -d '\n')" >> global.env

docker-compose up -d

rm global.env