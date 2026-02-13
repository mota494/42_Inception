#!/bin/bash

# Create the initialization SQL file
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" > /etc/mysql/init.sql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> /etc/mysql/init.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> /etc/mysql/init.sql
echo "FLUSH PRIVILEGES;" >> /etc/mysql/init.sql

# Initialize MariaDB
mysql_install_db --user=mysql --ldata=/var/lib/mysql

# Start MariaDB with the initialized SQL script
# We use `--init-file` to execute our SQL file
mysqld --init-file=/etc/mysql/init.sql
