MAKE ?= make

build:
	$(MAKE) -C src build

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

.PHONY: build clean start stop ps logs
