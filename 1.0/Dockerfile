FROM alpine:3.7

ENV APEX_VERSION=1.0.0-rc2

RUN apk --update add curl ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN curl -sLO https://github.com/apex/apex/releases/download/v${APEX_VERSION}/apex_${APEX_VERSION}_linux_amd64.tar.gz && \
    tar -xzvf apex_${APEX_VERSION}_linux_amd64.tar.gz -C /bin/ apex && \
    apk del curl

ENTRYPOINT ["apex"]
CMD ["--help"]
