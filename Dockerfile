FROM 5003/builder:curl
RUN apk add --no-cache --virtual .builder tar && \
    apk add --no-cache openjdk8-jre && \
    curl --location http://www.scala-lang.org/files/archive/scala-2.9.3.tgz \
    | tar --gzip --extract --file - --directory /usr/local/ --strip-components 1 && \
    apk del --no-cache .builder
CMD ["scala"]