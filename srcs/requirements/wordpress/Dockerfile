FROM debian:buster

RUN apt-get update && apt-get install -y \
	wget \
	php \
	php-fpm \
	php-mysql \
	mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www &&\
	tar -xzf /var/www/wordpress-6.0-fr_FR.tar.gz -C /var/www &&\
	rm /var/www/wordpress-6.0-fr_FR.tar.gz

COPY conf/www.conf /etc/php/7.3/fpm/pool.d

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar &&\
	mv wp-cli.phar /usr/local/bin/wp &&\
	mkdir -p /run/php/

COPY tools/wp_config.sh	/

# EXPOSE 9000

ENTRYPOINT ["bash", "wp_config.sh"]