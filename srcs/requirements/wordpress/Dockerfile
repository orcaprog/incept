FROM debian:buster

RUN apt-get update -y &&  apt-get install  wget -y

RUN apt-get update -y && apt-get install -y php7.3 php7.3-fpm  php7.3-mysql  mariadb-client 

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN		chmod 777 -R /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

COPY ./tools/script.sh /script.sh
RUN chmod +x script.sh
COPY ./conf/www.conf etc/php/7.3/fpm/pool.d/www.conf
EXPOSE 9000
RUN mkdir /run/php/
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp


CMD ["./script.sh"]


				