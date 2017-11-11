FROM php:5.6.32-apache
ADD filemanager.php /var/www/index.php
ADD phpfm.png /var/www/phpfm.png
ADD LICENSE /var/www/LICENSE
ADD src /var/www/src

VOLUME /mount

EXPOSE 80

