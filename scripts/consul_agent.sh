consul agent \
  -config-dir=/etc/consul.d \
  -enable-script-checks \
  -bind 127.0.0.1 \
  -data-dir=/tmp/consul \
  -retry-join \
  consul-server-1
