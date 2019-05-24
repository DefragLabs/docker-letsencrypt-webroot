#!/usr/bin/env bash

echo "Restarting nginx container from entrypoint"
nginx -g "daemon off;"
