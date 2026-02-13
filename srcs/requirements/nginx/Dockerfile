FROM debian:bookworm

RUN apt-get update 
RUN apt-get -y upgrade 
RUN apt-get -y install nginx openssl

RUN mkdir -p /etc/nginx/sites-available/

COPY ./tools/default /etc/nginx/sites-available/.

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/cert.key -out /etc/nginx/ssl/cert.crt -subj "/C=TE/L=TE/O=42/OU=student/CN=mloureir.42.fr"

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
