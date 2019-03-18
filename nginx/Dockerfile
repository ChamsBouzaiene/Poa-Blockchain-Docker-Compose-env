FROM nginx:1.11.10



COPY nginx.conf /etc/nginx/nginx.conf 
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod +x /root/docker-entrypoint.sh

ENTRYPOINT root/docker-entrypoint.sh

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8080