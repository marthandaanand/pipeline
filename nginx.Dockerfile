FROM nginx

RUN  echo "daemon off;" >> /etc/nginx/nginx.conf

COPY default /etc/nginx/conf.d/default.conf

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx"]
