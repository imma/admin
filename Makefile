test: 
	deploy -i $(shell which inventory-consul) -l all $(BLOCK_PATH)/deploy/example/local.yml

BLOCK_KIT = kit
DNS_SERVER = 172.28.128.1
include ../base/Makefile.docker
