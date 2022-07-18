FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
MAINTAINER Omar Ricardo Vargas Cárdenas <omar.vargas.cardenas@gmail.com>

#https://docs.moodle.org/dev/Moodle_4.0_release_notes#Server_requirements
#https://download.moodle.org/releases/latest/

WORKDIR /var/www/

ADD install_tools.sh .
ADD install_php.sh .
ADD install_apache.sh .
ADD install_moodle.sh .
ADD install_permissions.sh .
ADD download_moodle.sh .

RUN chmod +x ./install_*
RUN chmod +x ./download_moodle.sh

RUN ./install_tools.sh
RUN ./install_php.sh
RUN ./install_apache.sh
RUN ./download_moodle.sh file
RUN echo 'max_input_vars = 5000' >> /etc/php/7.4/apache2/php.ini

ADD info.php ./html/info.php
RUN chmod +x ./html/info.php

RUN chown -R www-data. ./html/

EXPOSE 80
CMD apachectl -D FOREGROUND
