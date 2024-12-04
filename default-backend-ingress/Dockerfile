ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN chmod -R a+w /var/cache/nginx/ \
        && touch /var/run/nginx.pid \
        && chmod a+w /var/run/nginx.pid \
        && rm /etc/nginx/conf.d/*

COPY default-backend-ingress/hello.conf /etc/nginx/conf.d/
COPY default-backend-ingress/index.html /usr/share/nginx/html/
EXPOSE 8080
USER nginx
