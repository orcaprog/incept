#!bin/bash

cd /var/www/wordpress

until mariadb -h mariadb -u abouassi -p1234 -e ";"; do
    echo "sber ...."
    sleep 2
done
echo "nadi ...."
# Creating the wp-config.php file using this command.
wp config create	--allow-root --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=mariadb --path='/var/www/wordpress'
# wp core download --allow-root
# Installing wordpress using the given environment variables to avoid showing the wordpress installation page everytime we run the containe
wp core install --url=${DOMAIN_NAME} --title=${INCEPTIONABOUASSI} --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root

wp user create $U_WP_USER $U_WP_EMAIL --role=${U_WP_ROLE} --user_pass=${U_WP_PW} --allow-root
php-fpm7.3 -F