ARG BASE_IMAGE
FROM $BASE_IMAGE
#LABEL maintainer=NexOps
RUN apk update && apk add --no-cache curl busybox-extras openssl icu-libs tzdata bc tcptraceroute gcompat \
    krb5-libs=1.19.4-r0 libcom_err=1.46.6-r0 libcrypto1.1=1.1.1w-r1 \
    libssl1.1=1.1.1w-r1 zlib=1.2.12-r3 \
    && rm -rf /var/cache/apk/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0