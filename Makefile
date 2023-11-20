nginx : 
	sudo docker build srcs/requirements/nginx -t my_nginx 

mariadb :
	sudo docker build srcs/requirements/mariadb -t my_mariadb
	
wordpress :
	sudo docker build srcs/requirements/wordpress -t my_wordpress