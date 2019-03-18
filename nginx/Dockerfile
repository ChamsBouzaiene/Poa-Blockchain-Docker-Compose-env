FROM nginx:1.11.10



COPY nginx.conf /etc/nginx/nginx.conf 
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod +x /root/docker-entrypoint.sh

ENTRYPOINT root/docker-entrypoint.sh

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]