FROM debian:buster

RUN apt-get update && apt-get install -y \
	mariadb-server mariadb-client

COPY conf/50-server.cnf /etc/mysql/mariadb.cond.d/50-server.cnf

COPY tools/script.sh	/
COPY tools/script.sql	/	

# EXPOSE 3306
ENTRYPOINT ["bash", "script.sh"]