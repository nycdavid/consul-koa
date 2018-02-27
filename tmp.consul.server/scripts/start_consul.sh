consul agent -bind $(ip addr show eth1 | grep inet  | grep -Po 'inet \K[\d.]+') -config-file=/tmp/consul.server/config.hcl
