DOCKERCOMPOSE := ./srcs/docker-compose.yml


images:
	docker-compose $(DOCKERCOMPOSE) build

up:
	docker-compose $(DOCKERCOMPOSE) up



.PHONY: images up