ARG BASE_IMAGE
FROM $BASE_IMAGE
#LABEL maintainer=NexOps
RUN apk update && apk add --no-cache curl busybox-extras openssl icu-libs tzdata bc tcptraceroute gcompat \
    libcom_err=1.46.6-r0 libcrypto1.1=1.1.1w-r1 libssl1.1=1.1.1w-r1 \
    && rm -rf /var/cache/apk/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0