sleep 2

wp config create	--allow-root \
					--path='/var/www/wordpress' \
					--dbname=$SQL_DATABASE \
					--dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306
			
wp core install 	--allow-root \
					--path='/var/www/wordpress' \
					--url=${URL}\
					--title=${WP_TITLE}\
					--admin_user=${WP_ADM_USER}\
					--admin_password=${WP_ADM_PASS}\
					--admin_email=${WP_ADM_EMAIL}\
					--skip-email

wp user create		--allow-root \
					--path='var/www/wordpress' \
					${WP_USER} \
					${WP_USER_EMAIL} \
					--user_pass=${WP_USER_PASS}

php-fpm7.3 -F