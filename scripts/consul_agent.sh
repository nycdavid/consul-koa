consul agent \
  -config-dir=/etc/consul.d \
  -enable-script-checks \
  -data-dir=/tmp/consul \
  -retry-join \
  consul-server-1
