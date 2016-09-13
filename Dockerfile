FROM 5003/builder:curl
RUN apk add --no-cache --virtual .builder tar && \
    apk add --no-cache openjdk8-jre && \
    curl --location http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz \
    | tar --gzip --extract --file - --directory /usr/local/ --strip-components 1 && \
    apk del --no-cache .builder
CMD ["scala"]