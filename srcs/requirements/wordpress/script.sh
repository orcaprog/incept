#!bin/bash

#Downloading and extracting Wordpress core files to the current directory
until mariadb -h mariadb -u abouassi -p1234 -e ";"; do
    echo "sber azbi...."
    sleep 2
done
echo "nadi azamel...."
wp core download --allow-root
# Creating the wp-config.php file using this command.
wp config create	--allow-root --dbname=abouassidb --dbuser=abouassi --dbpass=1234 --dbhost=mariadb --path='/var/www/wordpress'
# Installing wordpress using the given environment variables to avoid showing the wordpress installation page everytime we run the containe
wp core install --url=${DOMAIN_NAME} --title="DopamInception" --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --path='/var/www/wordpress'
# exec $@cd /var/www/html/wordpress
# #Downloading and extracting Wordpress core files to the current directory
# wp core download --allow-root
# # Creating the wp-config.php file using this command.
# wp core config --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --allow-root
# # Installing wordpress using the given environment variables to avoid showing the wordpress installation page everytime we run the containe
# wp core install --url=${DOMAIN_NAME} --title=DopamInception --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --a

php-fpm7.3 -F
