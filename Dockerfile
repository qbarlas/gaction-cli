FROM alpine

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

RUN mkdir /workdir
VOLUME /workdir

RUN curl https://dl.google.com/gactions/updates/bin/linux/amd64/gactions/gactions -o /gactions && chmod u+x /gactions

WORKDIR /workdir

ENTRYPOINT [ "/gactions" ]
