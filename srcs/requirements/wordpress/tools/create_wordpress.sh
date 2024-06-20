#!/bin/sh

if [ -f /var/www/html/wp-login.php ]
then
    echo "Wordpress is already installed"
else
    wp core download --path="/var/www/html" --allow-root
fi

if [ -f /var/www/html/wp-config.php ]; then
    echo "WordPress is already configured"
else
    echo "Creating Wordpress config..."

    cd /var/www/html

    wp config create --path="/var/www/html" \
                     --dbname="$MYSQL_DATABASE" \
                     --dbuser="$MYSQL_USER" \
                     --dbpass="$MYSQL_PASSWORD" \
                     --dbhost="mariadb" \
                     --allow-root

    echo "Installing Wordpress core..."

    wp core install --path="/var/www/html" \
                    --title="wordpress" \
                    --admin_user="$WORDPRESS_ADMIN_USER" \
                    --admin_password="$WORDPRESS_ADMIN_PASS" \
                    --admin_email="jboeve009@gmail.com" \
                    --url="https://jboeve.codam.nl/" \
                    --skip-email \
                    --allow-root


    echo "Creating an additional user..."

    wp user create "$WORDPRESS_USER" user@user.com \
                    --path="/var/www/html" \
                    --user_pass="$WORDPRESS_USER_PASS" \
                    --allow-root
fi

echo "Running php-fpm."
exec "$@"
