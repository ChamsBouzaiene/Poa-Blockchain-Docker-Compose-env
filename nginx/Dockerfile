FROM nginx:1.11.10

COPY nginx.conf /etc/nginx/nginx.conf 
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx"]

EXPOSE 8080