FROM ubuntu:20.04

RUN apt-get update && apt-get install -y apache2
WORKDIR /var/www/html

COPY index.html images/ .
EXPOSE 80
CMD ["apache2", "-D", "FOREGROUND"]
