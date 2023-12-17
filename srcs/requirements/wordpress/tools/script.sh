#!bin/sh

cd /var/www/wordpress

while ! mysql -h mariadb -u $SQL_USER -p$SQL_PASSWORD;
do
    echo "waiting..."
    sleep 2
done 
echo "MariaDB is up and running. "

wp config create	--allow-root --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=mariadb 

wp core install --url=${DOMAIN_NAME} --title=${INCEPTIONABOUASSI} --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} --allow-root

wp user create $U_WP_USER $U_WP_EMAIL --role=${U_WP_ROLE} --user_pass=${U_WP_PW} --allow-root

php-fpm7.3 -F