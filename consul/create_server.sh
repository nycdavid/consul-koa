#!/usr/bin/env bash

create_server() {
  IP=`expr $1 + 1`
  docker run \
  -d \
	--network=consul-koa \
  --ip="172.18.0.$IP" \
	consul agent \
	-server \
	-data-dir=/tmp/consul \
	-bootstrap-expect=3
}

NUM_OF_SERVERS=$1
echo "Creating Consul server cluster with $NUM_OF_SERVERS node(s)..."
for i in $(seq 1 $NUM_OF_SERVERS)
do
  echo "Creating node $i"
  create_server $i
done
