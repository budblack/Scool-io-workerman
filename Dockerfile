FROM budblack/env-workerman
MAINTAINER budblack@qq.com
WORKDIR /app
CMD php start.php start

EXPOSE 2120
EXPOSE 2121
EXPOSE 2123

ADD . /app
RUN /bin/bash -c 'source ~/.bashrc' \
 && curl -sS http://osjmgs07h.bkt.clouddn.com/20170820143516. | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer install

