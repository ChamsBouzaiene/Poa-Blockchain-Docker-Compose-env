FROM nginx:1.11.10



ADD nginx.conf /etc/nginx/nginx.conf 
ADD docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod +x /root/start.sh

ENTRYPOINT root/docker-entrypoint.sh
CMD ["nginx"]

EXPOSE 8080