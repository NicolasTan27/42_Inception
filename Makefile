all:
	docker compose -f ./srcs/docker-compose.yml up

build:
	docker compose -f ./srcs/docker-compose.yml --build

clean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all

fclean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all
	sudo rm -rf /home/ntan/data/mariadb/*
	sudo rm -rf /home/ntan/data/wordpress/*

sub:
	docker stop $$(docker ps -qa);
	docker rm $$(docker ps -qa);
	docker rmi -f $$(docker images -qa);
	docker volume rm $$(docker volume ls -q);
	docker network rm $$(docker network ls -q) 2>/dev/null;