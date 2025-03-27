FROM ubuntu:24.04

# Add standard labels following OCI image spec
LABEL org.opencontainers.image.title="dnscrypt-proxy"
LABEL org.opencontainers.image.description="dnscrypt-proxy"
LABEL org.opencontainers.image.source="https://github.com/${GITHUB_REPOSITORY}"
LABEL org.opencontainers.image.vendor="fzymgc-house"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL maintainer="fzymgc-house"

RUN apt-get update && apt-get install -y dnscrypt-proxy

COPY ./dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml

CMD ["dnscrypt-proxy", "-config", "/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]
