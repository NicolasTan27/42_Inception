all:
	docker compose -f ./srcs/docker-compose.yml up -d

stop:
	docker compose -f ./srcs/docker-compose.yml stop

clean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all

fclean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all
	sudo rm -rf /home/ntan/data/mariadb/*
	sudo rm -rf /home/ntan/data/wordpress/*

list:
	docker compose -f ./srcs/docker-compose.yml ps

#NGINX
volume_ls:
	docker volume ls

volume_mariadb:
	docker volume inspect mariadb

volume_wordpress:
	docker volume inspect wordpress

#MARIADB
db:
	docker exec -ti mariadb bash

#SHOW DATABASES;
#USE <databasename>;
#SHOW tables;

sub:
	docker stop $$(docker ps -qa);
	docker rm $$(docker ps -qa);
	docker rmi -f $$(docker images -qa);
	docker volume rm $$(docker volume ls -q);
	docker network rm $$(docker network ls -q) 2>/dev/null;