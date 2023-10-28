FROM mmmaxwwwell/wine6:latest

COPY install-winetricks /scripts/
RUN \
  mkdir /wineprefix &&\
  chown -R wine:wine /wineprefix &&\
  chmod +x /scripts/install-winetricks
WORKDIR /scripts
RUN runuser wine bash -c ./install-winetricks
RUN \
  mkdir -p /appdata/asa/bin &&\
  mkdir -p /appdata/asa/config
COPY entrypoint.bash /entrypoint.bash
COPY entrypoint-asa.bash /entrypoint-asa.bash
RUN chmod +x /entrypoint.bash && chmod +x /entrypoint-asa.bash

CMD /entrypoint.bash

