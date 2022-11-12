# service mysql start
# sleep 2

# mysql -u root < script.sql
# echo "update mysql.user set plugin='' where user='root'" | mysql -u root -psecretpass

# mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
# mysql -e "GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost' WITH GRANT OPTION;"
# mysql -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%';"
# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# mysql -u root -p$SQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"
# mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
# mysqld_safe

echo "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};
GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost' WITH GRANT OPTION;
CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';
GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%';
FLUSH PRIVILEGES; 
ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" > /var/www/script2.sql

# mysql -u root < script2.sql
# mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
# mysqld_safe