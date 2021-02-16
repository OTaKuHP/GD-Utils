#Use Alpine Base Image Rather than Debian
FROM node:alpine

LABEL maintainer="Nenokkadine"

#Dependencies
RUN \
    echo "**** Installing Dependencies ****" && \
    apk update && \
    apk add --no-cache gcc \
                       g++ \
                       git \
                       p7zip \
                       curl \
                       wget \
                       tar \
                       unrar \
                       unzip \
                       xz \
                       caddy && \
    rm -rf /var/cache/apk/*