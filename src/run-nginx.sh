#!/usr/bin/env bash

echo "##################### Starting NGINX"
export DOLLAR='$'
envsubst < /src/default.conf.template > /etc/nginx/conf.d/default.conf
socat TCP4-LISTEN:8080,reuseaddr,fork PROXY:${NGX_FPROXY_HOST}:${NGX_FPROXY_DEST_HOST}:${NGX_FPROXY_DEST_PORT},proxyport=${NGX_FPROXY_PORT} &
nginx -g "daemon off;"