ARG BASE_IMAGE
FROM $BASE_IMAGE
#LABEL maintainer=NexOps
RUN apt-get update && apt-get install -y --no-install-recommends  \
    iputils-ping wget tcptraceroute bc tzdata curl telnet \
    libcurl4=7.64.0-4+deb10u8 libgnutls30=3.6.7-4+deb10u11 \
    libgssapi-krb5-2=1.17-3+deb10u6 libk5crypto3=1.17-3+deb10u6 \
    libkrb5-3=1.17-3+deb10u6 libkrb5support0=1.17-3+deb10u6 \
    libncursesw6=6.1+20181013-2+deb10u5 libnghttp2-14=1.36.0-2+deb10u2 \
    libssh2-1=1.8.0-2.1+deb10u1 libssl1.1=1.1.1n-0+deb10u6 \
    libsystemd0=241-7~deb10u10 libtasn1-6=4.13-3+deb10u1 \
    libtinfo6=6.1+20181013-2+deb10u5 libudev1=241-7~deb10u10 \
    ncurses-base=6.1+20181013-2+deb10u5 ncurses-bin=6.1+20181013-2+deb10u5 \
    openssl=1.1.1n-0+deb10u6 tzdata=2021a-0+deb10u12 \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping \
    && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0