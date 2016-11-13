FROM 5003/scala:2.12.x
RUN apk add --no-cache --virtual .builder curl \
                                          tar && \
    curl --location --insecure https://dl.bintray.com/sbt/native-packages/sbt/0.13.13/sbt-0.13.13.tgz \
    | tar --gzip --extract --file - --directory /usr/local/ --strip-components 1 && \
    apk del --no-cache .builder
RUN sbt about