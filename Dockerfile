FROM php:5.6.32-apache
ADD filemanager.php /var/www/index.php
ADD phpfm.png /var/www/phpfm.png
ADD LICENSE /var/www/LICENSE
ADD src /var/www/src

# SANE DEFAULTS
ENV USER=fm_admin \
    PASS=fm_admin

VOLUME /mount

EXPOSE 80

