test: 
	deploy -i $(shell which inventory-consul) -l all $(BLOCK_PATH)/deploy/example/local.yml

local:
	docker images | grep defn/block | awk '{print $$2}' | runmany 'docker tag defn/block:$$1 cache.nih/block:$$1 && docker rmi defn/block:$$1'

download:
	cat compose.json | jq -r '.services | keys[]' | runmany 'docker pull defn/block:$$1'

BLOCK_KIT = kit
include ../base/Makefile.docker
