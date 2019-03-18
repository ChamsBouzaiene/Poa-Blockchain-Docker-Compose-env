#!/bin/sh

# The htpasswd replacement
printf "$NGINX_PROXY_HTPASSWD_USERNAME:$(openssl passwd -apr1 $NGINX_PROXY_HTPASSWD_PASSWORD)\n" > /etc/nginx/htpasswd

# The proxy replacement
if [ -z $NGINX_PROXY_HTPASSWD_DOMAIN ]; then
   NGINX_PROXY_HTPASSWD_DOMAIN="proxy_service"
fi

echo ${NGINX_PROXY_HTPASSWD_DOMAIN}
echo heyyyyyyyyyy!

sed -i -e "s/NGINX_PROXY_HTPASSWD_DOMAIN/$NGINX_PROXY_HTPASSWD_DOMAIN/g"  /etc/nginx/nginx.conf

echo ${NGINX_PROXY_HTPASSWD_DOMAIN}


exec nginx -g 'daemon off;';