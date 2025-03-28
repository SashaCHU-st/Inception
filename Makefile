DOCKERCOMPOSE := ./srcs/docker-compose.yml

all: up

up:
	mkdir -p $(HOME)/data/wordpress
	mkdir -p $(HOME)/data/mariadb
	@docker-compose -f $(DOCKERCOMPOSE) up --env-file srcs/.env -d --build

down:
	@docker-compose -f $(DOCKERCOMPOSE) --env-file srcs/.env down

clean: down
	@docker-compose -f $(DOCKERCOMPOSE) --env-file srcs/.env down --remove-orphans
	@docker system prune -f


fclean: down
	# deletes all unused volumes and network, imges and contaners
	@docker system prune --all --force --volumes 
	sudo rm -rf $(HOME)/data/wordpress
	sudo rm -rf $(HOME)/data/mariadb

re:
	

.PHONY: fclean up down clean