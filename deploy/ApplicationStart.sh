#!/usr/bin/env bash

# purge opcache
php /var/www/cachetool.phar opcache:reset --fcgi=/var/run/php-fpm.sock
