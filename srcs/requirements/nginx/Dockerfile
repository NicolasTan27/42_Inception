FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx\
	openssl 

RUN mkdir -p /etc/nginx/ssl && \
	openssl req 	-x509 \
				 	-nodes \
					-out /etc/nginx/ssl/inception.crt \
					-keyout /etc/nginx/ssl/inception.key \
					-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ntan/UID=ntan@student.42.fr"

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY conf/default /etc/nginx/sites-available

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

# EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]