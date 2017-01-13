FROM 5003/builder:curl
RUN apk add --no-cache --virtual .builder tar && \
    apk add --no-cache openjdk8-jre \
                       bash && \
    curl --location http://downloads.lightbend.com/scala/2.12.0-M4/scala-2.12.0-M4.tgz \
    | tar --gzip --extract --file - --directory /usr/local/ --strip-components 1 && \
    apk del --no-cache .builder
CMD ["scala"]