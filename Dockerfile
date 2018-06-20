FROM php:7.2-cli-alpine
MAINTAINER jeff.tunessen@gmail.com

COPY docker/bin/console /usr/local/bin
RUN chmod +x /usr/local/bin/console

ENTRYPOINT ["console"]
CMD []