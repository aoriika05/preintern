FROM php:fpm
RUN apt-get update \
    && apt-get install -y \
    git \
    zip \
    unzip \
    vim 

RUN docker-php-ext-install pdo_mysql mysqli
RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php \
    && ln -s /usr/bin/composer.phar /usr/bin/composer

RUN apt-get install -y npm nodejs \
    && npm install n -g \
    && n stable \
    && apt-get purge -y npm nodejs

WORKDIR /src
ADD . /src/storage
RUN chown -R www-data:www-data /src/storage

ENTRYPOINT [ "bash", "-c", "composer install; npm install; exec php-fpm" ]
