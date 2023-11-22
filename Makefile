nginx : 
	sudo docker rmi -f my_nginx
	sudo docker build srcs/requirements/nginx -t my_nginx 
	 sudo docker container run -d -it -p "443:443" --name mytest -v /home/abouassi/Desktop/incept/srcs/requirements/nginx/tools:/var/www/html my_nginx
	
mariadb :
	sudo docker build srcs/requirements/mariadb -t my_mariadb
	
wordpress :
	sudo docker build srcs/requirements/wordpress -t my_wordpress