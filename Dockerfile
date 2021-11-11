FROM nginx:latest

ADD . /usr/share/nginx/html

RUN chgrp -R 0 /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R g + rwX /var/cache/nginx /var/run /var/log/nginx