FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y mariadb-server vim wget git mycli zsh

COPY ./tools/mariadb.sh /mariadb-setup.sh

RUN chmod +x /mariadb-setup.sh

ENTRYPOINT ["./mariadb-setup.sh"]
