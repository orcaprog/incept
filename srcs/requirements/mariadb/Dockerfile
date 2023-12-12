FROM  debian:11

RUN  apt-get update -y && apt-get install mariadb-server -y
# RUN mkdir /var/lib/test
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script ./script

RUN chmod +x script

EXPOSE  3306

CMD [ "./script" ]
