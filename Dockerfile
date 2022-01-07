ARG VERSION=3.9
FROM openjdk:8-jre-alpine${VERSION}

RUN apk add --update \
    bash \
    curl \
    unzip \
    && rm -rf /var/cache/apk/*

WORKDIR /opt

ARG PMD_VERSION=6.41.0
ENV PMD_VERSION=${PMD_VERSION}

RUN curl -sLO https://github.com/pmd/pmd/releases/download/pmd_releases%2F${PMD_VERSION}/pmd-bin-${PMD_VERSION}.zip && \
    unzip pmd-bin-${PMD_VERSION}.zip && \
    rm pmd-bin-${PMD_VERSION}.zip && \
    echo '#!/bin/bash' >> /usr/local/bin/pmd && \
    echo '#!/bin/bash' >> /usr/local/bin/cpd && \
    echo '/opt/pmd-bin-${PMD_VERSION}/bin/run.sh pmd "$@"' >> /usr/local/bin/pmd && \
    echo '/opt/pmd-bin-${PMD_VERSION}/bin/run.sh cpd "$@"' >> /usr/local/bin/cpd && \
    chmod +x /usr/local/bin/pmd && \
    chmod +x /usr/local/bin/cpd 

WORKDIR /workdir 