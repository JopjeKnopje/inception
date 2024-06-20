FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y mariadb-server vim wget git mycli zsh

COPY ./tools/mariadb-setup.sh /mariadb-setup.sh
RUN chmod +x /mariadb-setup.sh

COPY tools/healthcheck.sh /etc/healthcheck.sh
RUN chown mysql:root /etc/healthcheck.sh && chmod +x /etc/healthcheck.sh

ENTRYPOINT ["./mariadb-setup.sh"]
