FROM php:5.6.32-apache
ADD filemanager.php /var/www/html/index.php
ADD phpfm.png /var/www/html/phpfm.png
ADD LICENSE /var/www/html/LICENSE
ADD src /var/www/html/src

# SANE DEFAULTS
ENV USER=fm_admin \
    PASS=fm_admin

VOLUME /mount

EXPOSE 80

