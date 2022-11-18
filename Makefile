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