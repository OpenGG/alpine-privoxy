FROM alpine:latest

LABEL maintainer="OpenGG <liy099@gmail.com>"

RUN apk add --no-cache privoxy \
  && cp /etc/privoxy/config /etc/privoxy/config.example

ADD bin /bin

# port
EXPOSE 8118

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["start.sh"]
