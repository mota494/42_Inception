all : mkdirs up

mkdirs:
	mkdir -p $(HOME)/inception_data/wordpress
	mkdir -p $(HOME)/inception_data/nginx
	mkdir -p $(HOME)/inception_data/mariadb

fclean: down
	sudo rm -rf $(HOME)/inception_data/wordpress
	sudo rm -rf $(HOME)/inception_data/nginx
	sudo rm -rf $(HOME)/inception_data/mariadb
	sudo rm -rf $(HOME)/inception_data
	docker system prune

up : 
	docker compose -f ./srcs/docker-compose.yml up -d

down : 
	docker compose -f ./srcs/docker-compose.yml down

stop : 
	docker compose -f ./srcs/docker-compose.yml stop

start : 
	docker compose -f ./srcs/docker-compose.yml start

status :
	docker ps
