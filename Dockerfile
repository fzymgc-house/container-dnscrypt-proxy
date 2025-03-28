FROM alpine:edge@sha256:115729ec5cb049ba6359c3ab005ac742012d92bbaa5b8bc1a878f1e8f62c0cb8

# Add standard labels following OCI image spec
LABEL org.opencontainers.image.title="dnscrypt-proxy"
LABEL org.opencontainers.image.description="dnscrypt-proxy"
LABEL org.opencontainers.image.source="https://github.com/${GITHUB_REPOSITORY}"
LABEL org.opencontainers.image.vendor="fzymgc-house"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL maintainer="fzymgc-house"

RUN apk update && apk add --no-cache dnscrypt-proxy

CMD ["dnscrypt-proxy", "-config", "/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]
