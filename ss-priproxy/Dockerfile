FROM alpine:3.7

LABEL maintainer="mritd <mritd1234@gmail.com>"

ARG TZ="Asia/Shanghai"

ENV TZ ${TZ}

RUN apk upgrade --update \
    && apk add bash tzdata privoxy \
    && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && rm -rf /var/cache/apk/* \
    && mv /etc/privoxy/config /etc/privoxy/configbak

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
