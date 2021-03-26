From php:7.3.21-fpm
#维护者信息
MAINTAINER hunter 1039526501@qq.com
# 复制时区配置
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装基础
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    apt-utils \
    curl \
    sudo \
    iputils-ping \
    libicu-dev \
    libmemcached-dev \
    libz-dev \
    libpq-dev \
    libzip-dev \
    libonig-dev \
    libjpeg62-turbo-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev \
    zlib1g-dev \
    libxml2-dev \
    libbz2-dev \
    graphviz \
    git \
    vim \
    wget \
    net-tools \
    zip \
    unzip \
    openssh-server \
    openssh-client \
    subversion \
  && rm -rf /var/lib/apt/lists/*


# 安装PHP扩展
RUN docker-php-ext-configure bcmath --enable-bcmath \
    && docker-php-ext-configure pcntl --enable-pcntl \
    && docker-php-ext-configure pdo_mysql --with-pdo-mysql \
    && docker-php-ext-configure mbstring --enable-mbstring \
    && docker-php-ext-configure soap --enable-soap \
    && docker-php-ext-configure exif --enable-exif \
    && docker-php-ext-install \
        bcmath \
        intl \
        mbstring \
        mysqli \
        pcntl \
        pdo_mysql \
        sockets \
        zip \
        soap \
        exif \
  && docker-php-ext-install opcache \
  && docker-php-ext-enable opcache

RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/lib --with-freetype-dir=/usr/include/freetype2 \
    && docker-php-ext-install gd;

# redis xdebug swoole mongo
ENV PHPREDIS_VERSION 5.3.4
ENV PHPXDEBUG_VERSION 3.0.3
ENV PHPSWOOLE_VERSION 4.6.4
ENV PHPMONGODB_VERSION 1.9.0
RUN pecl install redis-$PHPREDIS_VERSION \
    && pecl install xdebug-$PHPXDEBUG_VERSION \
    && pecl install swoole-$PHPSWOOLE_VERSION \
    && pecl install mongodb-$PHPMONGODB_VERSION \
    && docker-php-ext-enable redis xdebug swoole mongodb

# composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
     && php composer-setup.php \
     && php -r "unlink('composer-setup.php');" \
     && mv composer.phar /usr/local/bin/composer \
     && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# start
CMD ["php-fpm"]