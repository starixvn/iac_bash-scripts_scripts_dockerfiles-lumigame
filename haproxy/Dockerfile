ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt-get update && \
    apt-get install --no-install-recommends -y vim telnet dnsutils
USER root
ENV REGISTRY_URL=gitlab.local.vn
ENV REGISTRY_TOKEN=1234566sdsvcvxcvsfsdf