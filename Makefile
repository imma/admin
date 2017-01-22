ifeq (rebuild,$(firstword $(MAKECMDGOALS)))
REBUILD := $(strip $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS)))
$(eval $(REBUILD):;@:)
endif
REBUILD ?= app

../$(REBUILD):
	git clone git@github.com:imma/$(REBUILD) ../$(REBUILD)
	
rebuild: ../$(REBUILD)
	@figlet $(REBUILD) 2>/dev/null || true
	@touch .$(REBUILD).building
	cd ../$(REBUILD) && $(extra) make docker
	@rm -f .$(REBUILD).building

rebuild-all:
	cat compose.json | jq -r '.services | keys[]' | grep -v ubuntu-home | runmany '$(make) rebuild $$1 || true'

include ../base/Makefile.docker
