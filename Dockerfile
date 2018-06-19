FROM alpine
MAINTAINER jeff.tunessen@gmail.com

COPY docker/bin/is-expired.sh /usr/local/bin

RUN chmod +x /usr/local/bin/is-expired.sh

ENTRYPOINT ["is-expired.sh"]
CMD []