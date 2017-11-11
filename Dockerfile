FROM php:5.6.32-apache
ADD filemanager.php /var/www/html/index.php
ADD LICENSE /var/www/LICENSE
ADD README.md /var/www/README.md
ADD src /var/www/html/src

USER root

# SANE DEFAULTS
ENV USER=fm_admin \
    PASS=fm_admin \
    ROOT_URL=https://example.com/

VOLUME /var/www/mount
RUN chmod 777 /var/www/mount

EXPOSE 80

