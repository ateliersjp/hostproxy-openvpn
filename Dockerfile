FROM ateliersjp/hostproxy

RUN apk add --no-cache \
    bash \
    curl \
 && apk add --no-cache \
    --repository https://dl-cdn.alpinelinux.org/alpine/v3.14/main \
    openvpn~=2.5.6-r0

COPY ./start.sh /bin/
