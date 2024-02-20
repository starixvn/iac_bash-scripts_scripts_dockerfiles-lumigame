ARG BASE_IMAGE
FROM $BASE_IMAGE
#LABEL maintainer=NexOps
RUN apt-get update && apt-get install -y --no-install-recommends iputils-ping wget tcptraceroute bc tzdata curl telnet \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://pingpros.com/pub/tcpping -O /usr/bin/tcpping && chmod +x /usr/bin/tcpping
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
    COMPlus_EnableDiagnostics=0