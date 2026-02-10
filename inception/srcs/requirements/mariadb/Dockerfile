FROM debian:bookworm

RUN apt-get update 
RUN apt-get -y upgrade 
RUN apt-get -y install mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./tools/init.sql /etc/mysql/init.sql
COPY ./tools/mariadbrun.sh .

RUN mkdir /run/mysqld && chmod +x mariadbrun.sh

CMD [ "./mariadbrun.sh" ]
