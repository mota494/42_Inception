all : mkdirs build

mkdirs:
	mkdir -p $(HOME)/inception_data/wordpress
	mkdir -p $(HOME)/inception_data/nginx
	mkdir -p $(HOME)/inception_data/mariadb

cleandirs:
	sudo rm -rf $(HOME)/inception_data/wordpress
	sudo rm -rf $(HOME)/inception_data/nginx
	sudo rm -rf $(HOME)/inception_data/mariadb
	sudo rm -rf $(HOME)/inception_data

clean: cleandirs down

fclean: cleandirs
	docker system prune

build : 
	docker compose -f ./srcs/docker-compose.yml build
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

re: fclean all
