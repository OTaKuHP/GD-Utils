#Use Alpine Base Image Rather than Debian
FROM node:lts-alpine3.10

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
                       bash \
                       htop && \
    rm -rf /var/cache/apk/*