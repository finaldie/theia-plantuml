MAKE ?= make
ETC := ./.etc
DOMAIN_ENV := $(ETC)/domain.env

help:
	@echo "Usage:"
	@echo " \_ build"
	@echo " \_ clean"
	@echo ""
	@echo " \_ start"
	@echo " \_ stop"
	@echo " \_ ps"
	@echo " \_ logs"

build: init
	$(MAKE) -C src build

init: init_ws init_etc

init_ws:
	mkdir -p ./workspace

init_etc:
	mkdir -p ./.etc
	if [ ! -f ./.etc/domain.env ]; then \
	  echo "HOSTNAME=`hostname`" >> $(DOMAIN_ENV); \
	fi

clean:
	$(MAKE) -C src clean

start:
	$(MAKE) -C src start

stop:
	$(MAKE) -C src stop

ps:
	$(MAKE) -C src ps

logs:
	$(MAKE) -C src logs

.PHONY: init init_ws init_etc build clean start stop ps logs
