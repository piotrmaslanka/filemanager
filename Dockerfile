FROM php:5.6.32-apache
ADD index.php /var/www/html/index.php
ADD phpfm.png /var/www/html/phpfm.png

VOLUME /mount

