FROM  debian:11

RUN  apt-get update -y && apt-get install mariadb-server -y
# COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE  3306
COPY ./tools/script ./script

RUN chmod +x script

CMD [ "./script" ]
