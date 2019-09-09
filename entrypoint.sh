#!/bin/sh
echo "Start..."
sed -i "s/Server1/$node/" /var/www/localhost/htdocs/index.html
httpd -D FOREGROUND