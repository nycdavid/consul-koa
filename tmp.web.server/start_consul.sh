#!/usr/bin/env bash
consul agent \
  -bind $(ip addr show eth1 | grep inet  | grep -Po 'inet \K[\d.]+') \
  -config-dir=/etc/consul.d \
  -config-file=/tmp/web.server/config.hcl
