FROM almalinux:9

RUN dnf -y upgrade \
    && dnf install -y dnf-utils \
    && dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm

RUN dnf install -y nginx \
    && systemctl enable --now nginx

RUN dnf install -y mysql-server \
    && systemctl enable --now mysqld

RUN dnf module enable php:remi-8.4 -y
RUN dnf install -y php-cli php-mbstring php-xml php-mysqlnd php-fpm unzip
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer global require laravel/installer \
    && echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> ~/.bashrc \
    && source ~/.bashrc

RUN dnf install -y npm \
    && npm install n -g \
    && n stable \
    && dnf remove -y npm nodejs

EXPOSE 80 

CMD ["/bin/bash"]