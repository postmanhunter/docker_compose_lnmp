#!/bin/sh
crontab -u www-data /data/www/webapi/scripts/crontab.ini
touch /var/log/cron
/etc/init.d/cron start
tail -f /var/log/cron