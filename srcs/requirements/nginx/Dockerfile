FROM debian:buster

RUN apt-get update -y && apt-get install nginx -y
RUN apt-get update -y && apt-get install openssl -y

	
# RUN apt-get install php7.3 php7.3-fpm -y 

RUN mkdir -p /etc/nginx/ssl
RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=1337/L=Bg/O=42/OU=42/CN=abouassi.42.fr/UID=login"
COPY ./nginx.conf /etc/nginx/sites-enabled/
# COPY ./www.conf etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 443

CMD [ "nginx","-g","daemon off;" ] 