FROM  debian:11

RUN  apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script ./script

# ENV SQL_DATABASE=abouassidb
# ENV SQL_USER=abouassi
# ENV SQL_PASSWORD=1234

RUN chmod +x script

EXPOSE  3306

CMD [ "./script" ]


