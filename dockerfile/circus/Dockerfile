FROM php:7.3.21-fpm

RUN apt-get update && apt-get -y install libzip-dev unzip
RUN docker-php-ext-install pdo_mysql bcmath sockets zip

RUN curl https://getcomposer.org/installer > /tmp/composer-setup && \
    php /tmp/composer-setup --install-dir=/usr/bin --filename=composer

RUN pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis

RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 --no-cache-dir install circus -i https://mirrors.aliyun.com/pypi/simple/

RUN apt-get -y install gosu

COPY ./entrypoint.sh /data/
RUN chmod +x /data/entrypoint.sh

ENTRYPOINT ["/data/entrypoint.sh"]