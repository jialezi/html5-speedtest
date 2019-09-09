FROM alpine

RUN (apk --no-cache upgrade ;\
     apk add php7-apache2 curl php7-cli php7-json php7-phar php7-openssl php7-mbstring php7-zlib ;\
     curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer ;\
     sed -i "s/AllowOverride none/AllowOverride All/" /etc/apache2/httpd.conf ;\
     sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/" /etc/apache2/httpd.conf ;\
     rm -f /var/www/localhost/htdocs/* ;\
     mkdir /run/apache2/ ;\
     rm -f /var/cache/apk/* )

ADD entrypoint.sh /entrypoint.sh
ADD .  /var/www/localhost/htdocs/

RUN (chown -R apache:apache /var/www/localhost/htdocs/ ;\
     chmod 755 /entrypoint.sh )

ENV node Server

EXPOSE 80

ENTRYPOINT [ "sh", "/entrypoint.sh" ]