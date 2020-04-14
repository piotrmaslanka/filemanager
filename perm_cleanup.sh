#!/bin/bash

chmod -R 777 /var/www/mount
chmod -R 777 /tmp

exec apache2-foreground
