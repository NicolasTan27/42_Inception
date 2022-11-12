FROM debian:buster

RUN apt-get update && apt-get install -y \
	mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# COPY tools/script.sql	/var/www/
COPY tools/script.sh	/var/www/

ARG SQL_DATABASE
ARG SQL_ROOT_PASSWORD
ARG SQL_USER
ARG SQL_PASSWORD

RUN service mysql start &&\
	sleep 2 &&\
	bash /var/www/script.sh &&\
	mysql < /var/www/script2.sql &&\
	rm -f /var/www/script2.sql &&\
	rm -f var/www/script.sh

CMD ["mysqld_safe"]