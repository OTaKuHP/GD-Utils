FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
LABEL maintainer="Nenokkadine"

#Upgrade and add Repos
RUN apt-get -qq update && \
    apt-get -y upgrade && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    apt-add-repository multiverse && \
    apt-add-repository universe && \
    apt-get -qq update && \
    apt-get install -y build-essential

# Upgrade
RUN apt-get update && apt-get -qqy upgrade 

# Libs
RUN apt-get install -y libssl-dev \
                       zlib1g-dev \
                       libsqlite3-dev \
                       gcc \
                       g++ \
                       make \
                       cmake

#Utils 
RUN apt-get install -y wget \
                       git \
                       curl \
                       nano \
                       unzip \
                       zip \
                       xz-utils \
                       htop \
                       neofetch \
                       locales \
                       bash \
                       ca-certificates

#Locales
ENV LANG=en_US.UTF-8
RUN sed -i "s/# en_US.UTF-8/en_US.UTF-8/" /etc/locale.gen && \ 
    locale-gen    

#Node JS
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash && \
    #Node JS and NPM
    apt-get install -y nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    #Yarn
    apt-get install -y yarn