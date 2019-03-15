FROM nginx:1.11.10


ADD nginx.conf /etc/nginx/nginx.conf 
ADD docker-entrypoint.sh /root/docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx"]

EXPOSE 8080