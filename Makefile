consul-network:
	docker network \
	create \
	--subnet=172.18.0.0/16 \
	consul-koa
	
consul-server-cluster:
	docker run \
	--network=consul-koa \
	consul agent \
	-server \
	-data-dir=/tmp/consul \
	-bootstrap-expect=3

consul-agent-1:
	docker run \
	-it \
	-v $(shell pwd)/etc/consul.d:/etc/consul.d \
	consul \
	consul agent -config-dir=/etc/consul.d
