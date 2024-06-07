FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y wget curl php php-cgi php-mysql php-fpm php-pdo php-cli php-gd php-mbstring
RUN rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
		&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp



COPY ./conf/www.conf /etc/php/8.1/fpm/pool.d/


RUN mkdir /run/php


COPY ./tools/create_wordpress.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/create_wordpress.sh
ENTRYPOINT ["/usr/local/bin/create_wordpress.sh"]


WORKDIR /var/www/html

EXPOSE 9000


# Don't daemonize `-F`
CMD ["/usr/sbin/php-fpm7.4", "-F"]
