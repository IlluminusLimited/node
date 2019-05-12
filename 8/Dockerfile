# vim:set ft=dockerfile:

FROM amazonlinux

LABEL maintainer="Andrew Newell (PinsterTeam) <pinsterteam@gmail.com>"

ADD etc/nodesource.gpg.key /etc

WORKDIR /tmp

# TODO: Figure out how to install node with a version argument.
ENV NODE_VERSION=8

RUN yum -y install gcc-c++ ruby26 tar gzip git && \
    rpm --import /etc/nodesource.gpg.key && \
    curl --location --output ns.rpm https://rpm.nodesource.com/pub_8.x/el/7/x86_64/nodejs-8.10.0-1nodesource.x86_64.rpm && \
    rpm --checksig ns.rpm && \
    rpm --install --force ns.rpm && \
    npm cache clean --force && \
    yum clean all && \
    rm --force ns.rpm

WORKDIR /build
