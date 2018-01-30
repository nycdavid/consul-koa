consul-server:
	docker run \
	-p 8600:8600 \
	consul agent -dev

consul-agent-1:
	docker run \
	-it \
	-v $(shell pwd)/etc/consul.d:/etc/consul.d \
	consul \
	consul agent -config-dir=/etc/consul.d
