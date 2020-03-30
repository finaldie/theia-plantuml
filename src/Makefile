build:
	docker pull theiaide/theia-cpp:next
	docker pull plantuml/plantuml-server
	docker build --rm -t theia-plantuml-client .

clean:
	docker image rm theia-plantuml

start:
	docker-compose up

stop:
	docker-compose down

ps:
	docker-compose ps

logs:
	docker-compose logs -f

.PHONY: build start stop ps logs
