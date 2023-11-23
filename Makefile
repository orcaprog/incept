nginx : 
	sudo docker rmi -f my_nginx
	sudo docker build srcs/requirements/nginx -t my_nginx 
	
	 sudo docker container run -d -it --network=my_network -p "443:443" --name nginx-con my_nginx
mariadb :
	sudo docker build srcs/requirements/mariadb -t my_mariadb
	
wordpress :
	sudo docker rmi -f my_wordpress
	sudo docker build srcs/requirements/wordpress -t my_wordpress
	 sudo docker container run -d -it --network=my_network  --name wordpress-con -v /home/abouassi/Desktop/incept/srcs/requirements/nginx/tools:/var/www/wordpress my_wordpress