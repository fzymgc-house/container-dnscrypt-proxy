FROM alpine:edge@sha256:020dfcbaaf4cc1078bf2d9c7ba31a8466e334061dcd2f248001d68f79e52c000

# Add standard labels following OCI image spec
LABEL org.opencontainers.image.title="dnscrypt-proxy"
LABEL org.opencontainers.image.description="dnscrypt-proxy"
LABEL org.opencontainers.image.source="https://github.com/${GITHUB_REPOSITORY}"
LABEL org.opencontainers.image.vendor="fzymgc-house"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL maintainer="fzymgc-house"

RUN apk update && apk add --no-cache dnscrypt-proxy

CMD ["dnscrypt-proxy", "-config", "/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]
