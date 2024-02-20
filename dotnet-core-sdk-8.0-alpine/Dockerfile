ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
# FIX Medium Vuln
RUN apk update && apk add --no-cache curl=8.5.0-r0 libcrypto3=3.1.4-r5 \
    libcurl=8.5.0-r0 libssl3=3.1.4-r5