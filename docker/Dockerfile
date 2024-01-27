FROM alpine:3.15
RUN set -eux \ 
    && apk add --no-cache --update \
        bash=5.1.16-r0 \
        jq=1.6-r1

WORKDIR /usr/local/bin
COPY docker/*.sh .
RUN set -eux \
    && chmod +x /usr/local/bin/*.sh

WORKDIR /code

CMD ["/usr/local/bin/check.sh"]
