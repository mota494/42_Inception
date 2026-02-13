#!/bin/bash
cd /var/www/html

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
until mysql -h mariadb -u root -p$MARIADB_ROOT_PASSWORD -e "SELECT 1;" > /dev/null 2>&1; do
    echo "Waiting for MariaDB to be ready..."
       sleep 5
done
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=mloureir.42.fr --title=inception --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root
./wp-cli.phar user create $WP_GUEST_USER $WP_GUEST_EMAIL --role=subscriber --user_pass=$WP_GUEST_PASSWORD --allow-root
php-fpm8.2 -F
