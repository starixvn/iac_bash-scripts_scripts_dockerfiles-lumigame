ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN apt update && apt install -y --no-install-recommends rsyslog
COPY rsyslog-server/rsyslog.conf /rsyslog.conf
RUN mkdir -p /logs
ENTRYPOINT ["rsyslogd", "-n", "-f", "/rsyslog.conf"]