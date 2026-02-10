FROM debian:bookworm

RUN apt-get update 
RUN apt-get -y upgrade 
RUN apt-get -y install php8.2-fpm php8.2-mysqli curl

COPY www.conf /etc/php/8.2/fpm/pool.d/.
COPY ./tools/wordpress-entrypoint.sh .
RUN chmod +x wordpress-entrypoint.sh
CMD [ "./wordpress-entrypoint.sh" ]
