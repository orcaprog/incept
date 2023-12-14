FROM debian:buster

RUN apt-get update -y && apt-get install nginx -y
RUN apt-get update -y && apt-get install openssl -y

RUN mkdir -p /etc/nginx/ssl
RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=M-S/L=benguerir/O=1337/OU=1337/CN=abouassi.42.fr/UID=abouassi"
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/

CMD [ "nginx","-g","daemon off;" ] 