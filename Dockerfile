FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install tzdata
RUN apt-get install apache2 -y
COPY  .   /var/www/html/
RUN rm -rf /var/www/html/Dockerfile
ENTRYPOINT apachectl -D FOREGROUND
