# incept

ss -ntlu

php-fpm7.3 -F
 sudo docker run --name testnginx4 -it myimage

  sudo nano /etc/hosts


  sudo find / -name wordpress
  ps axfo pid,ppid,command

docker stop $(docker ps -qa) &&  docker rm $(docker ps -qa)  &&  docker rmi -f $(docker images -qa) &&  docker volume rm $(docker volume ls -q) &&  docker network rm $(docker network ls -q) 2>/dev/null"

for ports:
ss -tulpn
sudo apt-get install net-tools
htop dayal : show proccess

build context : blasa likaykon fiha dockerfile limnha kan kndir build

ENV    DOMAIN_NAME=abouassi.42.fr

ENV    SQL_DATABASE=abouassidb
ENV    SQL_USER=abouassi
ENV    SQL_PASSWORD=1234
ENV    SQL_ROOT_PASSWORD=12345

ENV WP_USER=abou
ENV WP_PW=1234
ENV WP_EMAIL=bsdayoub7@gmail.com
ENV WP_TITLE=INCEPTIONABOUASSI
ENV U_WP_USER=legend
ENV U_WP_EMAIL=browserayoub@gmail.com
ENV U_WP_ROLE=editor
ENV U_WP_PW=1234


nginx : 
	sudo docker rmi -f my_nginx
	sudo docker rm -f nginx
	sudo docker build srcs/requirements/nginx -t my_nginx 
	
	 sudo docker container run  -it --network=inception -p "443:443" --name nginx -v wordpress:/var/www/wordpress my_nginx 
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