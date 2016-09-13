RUN apk add --no-cache --virtual .builder curl \
                                          tar && \
    curl --location https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-0.13.12.tgz \
    | tar --gzip --extract --file - --directory /usr/local/ --strip-components 1 && \
    apk del --no-cache .builder
RUN sbt about