FROM alpine:3.7

RUN apk --update add curl jq && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN curl -sL $(curl -s https://api.github.com/repos/apex/apex/releases/latest | jq -r '.assets[] | select(.browser_download_url | test("linux_amd64")) | .browser_download_url') -o latest.tar.gz && \
    tar -xzvf latest.tar.gz apex && \
    mv apex /usr/loca/bin/ && \
    apk del curl jq

ENTRYPOINT ["apex"]
CMD ["--help"]
