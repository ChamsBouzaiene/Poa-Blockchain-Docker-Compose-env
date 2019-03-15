#!/bin/sh

# The htpasswd replacement
printf "$NGINX_PROXY_HTPASSWD_USERNAME:$(openssl passwd -apr1 $NGINX_PROXY_HTPASSWD_PASSWORD)\n" > /etc/nginx/htpasswd

# The proxy replacement
if [ -z $NGINX_PROXY_HTPASSWD_DOMAIN ]; then
   NGINX_PROXY_HTPASSWD_DOMAIN="proxy_service"
fi

sed -i -e "s/NGINX_PROXY_HTPASSWD_DOMAIN/$NGINX_PROXY_HTPASSWD_DOMAIN/g"  /etc/nginx/nginx.conf

if [ "$1" = 'nginx' ]; then
    exec nginx -g 'daemon off;';
fi

exec "$@"