all:
	sudo mkdir /home/abouassi/data
	sudo mkdir /home/abouassi/data/wordpress
	sudo mkdir /home/abouassi/data/mariadb
	sudo docker compose -f ./srcs/docker-compose.yml up -d --build

down :
	sudo docker compose -f ./srcs/docker-compose.yml down -v
	sudo rm -rf  /home/abouassi/data
	sudo rm -rf  /home/abouassi/data/wordpress
	sudo rm -rf  /home/abouassi/data/mariadb

nginx : 
	sudo docker rmi -f my_nginx
	sudo docker build srcs/requirements/nginx -t my_nginx 
	
	 sudo docker container run -d -it --network=my_network -p "443:443" --name nginx-con my_nginx
mariadb :
	sudo docker rmi -f my_mariadb

	sudo docker build srcs/requirements/mariadb -t my_mariadb
	sudo docker container run -d -it --name mariadb-con my_mariadb
	
wordpress :
	sudo docker rmi -f my_wordpress
	sudo docker build srcs/requirements/wordpress -t my_wordpress
	 sudo docker container run -d -it  --name wordpress-con -v /home/abouassi/Desktop/incept/srcs/requirements/nginx/tools:/var/www/wordpress my_wordpress