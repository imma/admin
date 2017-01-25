test: 
	deploy -i $(shell which inventory-consul) -l all $(BLOCK_PATH)/deploy/example/local.yml

BLOCK_KIT = kit
NET_SUBNET = 172.28.130
NET_PREFIX = 172.28.131
include ../base/Makefile.docker
