FROM php:5.6.32-apache
ADD filemanager.php /var/www/html/index.php
ADD LICENSE /var/www/LICENSE
ADD README.md /var/www/README.md
ADD src /var/www/html/src
ADD perm_cleanup.sh /usr/local/bin
RUN chmod ugo+x /usr/local/bin/perm_cleanup.sh

# SANE DEFAULTS
ENV USER=fm_admin \
    PASS=fm_admin \
    ROOT_URL=https://example.com/

VOLUME /var/www/mount

CMD ["perm_cleanup.sh"]

EXPOSE 80

