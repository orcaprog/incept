all:
	sudo docker compose -f ./srcs/docker-compose.yml up -d --build

down :
	sudo docker compose -f ./srcs/docker-compose.yml down -v

fdown :
	sudo docker compose -f ./srcs/docker-compose.yml down -v
	sudo rm -rf  /home/abouassi/data/wordpress/*
	sudo rm -rf  /home/abouassi/data/mariadb/*

nginx : 
	sudo docker rmi -f my_nginx
	sudo docker rm -f nginx
	sudo docker build srcs/requirements/nginx -t my_nginx 
	
	 sudo docker container run  -it --network=inception -p "443:443" --name nginx -v wordpress:/var/www/wordpress my_nginx /bin/bash
mariadb :
	sudo docker rmi -f my_mariadb
	sudo docker rm -f mariadb

	sudo docker build srcs/requirements/mariadb -t my_mariadb
	sudo docker container run -d -it  --network=inception --name mariadb  my_mariadb
	
wordpress :
	sudo docker rmi -f my_wordpress
	sudo docker rm -f wordpress
	sudo docker build srcs/requirements/wordpress -t my_wordpress
	 sudo docker container run -d -it --network=inception --name wordpress -v /var/www/wordpress my_wordpress
re	: down all