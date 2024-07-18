ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps

RUN bin/logstash-plugin update
RUN bin/logstash-plugin install logstash-codec-cloudtrail
RUN bin/logstash-plugin install logstash-input-s3
RUN bin/logstash-plugin install logstash-codec-cloudwatch_logs
RUN bin/logstash-plugin install logstash-output-opensearch
COPY logstash-input-cloudwatch_logs-1.0.3.gem /tmp/logstash-input-cloudwatch_logs-1.0.3.gem 
RUN bin/logstash-plugin install /tmp/logstash-input-cloudwatch_logs-1.0.3.gem