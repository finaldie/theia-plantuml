IMAGE_NAME := theia-plantuml

build:
	docker pull theiaide/theia-cpp:next
	docker pull plantuml/plantuml-server
	docker build --rm -t $(IMAGE_NAME) .

clean:
	docker image rm $(IMAGE_NAME)

start:
	docker-compose up -d

stop:
	docker-compose down

ps:
	docker-compose ps

logs:
	docker-compose logs -f

.PHONY: build start stop ps logs
