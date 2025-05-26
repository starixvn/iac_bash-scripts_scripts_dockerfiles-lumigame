ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt-get update && \
    apt-get install --no-install-recommends -y vim telnet dnsutils
USER root

ENV REGISTRY_URL=https://defectdojo.local.zxc \
    REGISTRY_TOKEN=1234bhnvghgfnvjgja123