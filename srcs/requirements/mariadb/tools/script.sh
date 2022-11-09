# service mysql start

mysqld_safe

sleep 5

mysql -u root < script.sql

# mysql -u root -p$SQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"

# mysql -u root -p$SQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS '${SQL_DATABASE}';"

# mysql -u root -p$SQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost' WITH GRANT OPTION;"

# mysql -u root -p$SQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -u root -p$SQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON '${SQL_DATABASE}'.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"

# mysql -u root -p$SQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

# exec mysqld_safe

# mysql -e "CREATE DATABASE IF NOT EXISTS Data1;"

# mysql -e "GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost' WITH GRANT OPTION;"

# mysql -e "CREATE USER IF NOT EXISTS 'notroot'@'localhost' IDENTIFIED BY 'easypass';"
# mysql -e "GRANT ALL PRIVILEGES ON Data1.* TO 'notroot'@'%' IDENTIFIED BY 'easypass';"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'secretpass';"
# mysql -u root -psecretpass -e "FLUSH PRIVILEGES;"

mysqladmin -u root -psecretpass shutdown

exec mysqld_safe