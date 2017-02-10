FROM alpine:3.4

RUN apk add --no-cache \
    git \
    subversion \
    bash \
    python \
    make \
    g++ \
    nodejs \
    php-cli

RUN npm install -g grunt

COPY build-wp.sh /bin/build-wp

RUN chmod +x /bin/build-wp

COPY files/composer.json /var/composer.json

ENTRYPOINT ["/bin/build-wp"]
