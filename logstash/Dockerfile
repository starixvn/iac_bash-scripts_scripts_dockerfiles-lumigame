ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOp

RUN bin/logstash-plugin update && bin/logstash-plugin install logstash-codec-cloudtrail logstash-input-s3 logstash-codec-cloudwatch_logs logstash-output-opensearch
COPY logstash/logstash-input-cloudwatch_logs-1.0.3.gem /tmp/logstash-input-cloudwatch_logs-1.0.3.gem 
RUN bin/logstash-plugin install /tmp/logstash-input-cloudwatch_logs-1.0.3.gem