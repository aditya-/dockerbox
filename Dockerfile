FROM alpine:latest

ENV REDIS_URL=redis://45.79.9.112:6379
RUN apk update && apk add wget ca-certificates && \
 cd /sbin && wget https://s3.amazonaws.com/ml-sreracha/sreracha
RUN chmod 755 /sbin/sreracha
EXPOSE 80
USER root
ENTRYPOINT /sbin/sreracha
