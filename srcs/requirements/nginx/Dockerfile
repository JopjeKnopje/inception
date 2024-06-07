FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y openssl nginx php-fpm

# Generate SSL key for https
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/jboeve.crt \ 
	-keyout /etc/nginx/ssl/jboeve.key \ 
    -subj "/C=NL/ST=Amsterdam/L=Amsterdam/O=Codam Coding College/OU=jboeve/CN=jboeve/"


COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

EXPOSE 443






CMD ["nginx", "-g", "daemon off;"]
