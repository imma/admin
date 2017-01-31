test: 
	deploy -i $(shell which inventory-consul) -l all $(BLOCK_PATH)/deploy/example/local.yml

BLOCK_KIT = kit
include ../base/Makefile.docker
