FROM theiaide/theia-cpp:next

USER root

RUN git clone --single-branch --branch master --depth 1 --recursive git://github.com/theia-ide/theia-plantuml-extension.git /build \
  && cd /build \
  && yarn

VOLUME /workspace
WORKDIR /build
EXPOSE 3000

COPY ./docker-entrypoint-theia.sh /usr/bin/
COPY ./settings.json /root/.theia/

ENTRYPOINT ["docker-entrypoint-theia.sh"]
