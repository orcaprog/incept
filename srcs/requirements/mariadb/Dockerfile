FROM  debian:buster

RUN  apt-get update -y && apt-get install mariadb-server -y

COPY ./tools/script ./script

RUN chmod +x script


