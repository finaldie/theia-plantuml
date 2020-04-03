FROM theiaide/theia-cpp:next

USER root

RUN git clone --single-branch --branch master --depth 1 --recursive git://github.com/theia-ide/theia-plantuml-extension.git /build \
  && cd /build \
  && yarn

VOLUME /home/project
WORKDIR /build

RUN apt-get update && apt-get install -y --no-install-recommends \
  gettext-base \
  && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint-theia.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint-theia.sh"]
