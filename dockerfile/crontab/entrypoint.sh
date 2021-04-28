#!/bin/sh
crontab -u www-data /var/www/html/laravel/scripts/crontab.ini
touch /var/log/cron
/etc/init.d/cron start
tail -f /var/log/cron