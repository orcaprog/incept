FROM debian

RUN apt-get update -y && apt-get install nginx -y
RUN apt-get update -y && apt-get install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=1337/L=Bg/O=42/OU=42/CN=abouassi.42.fr/UID=login"
COPY ./nginx.conf /etc/nginx/sites-enabled/

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 443
CMD [ "nginx","-g","daemon off;" ] 