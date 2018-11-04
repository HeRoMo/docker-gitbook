FROM node:10.13.0-slim
LABEL maintainer="HeRoMo"

# install apt packages
RUN apt-get update -y && \
    apt-get install -y \
      bzip2 \
      calibre && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN yarn global add gitbook-cli svgexport

COPY ./start.sh /usr/bin/
RUN chmod 755 /usr/bin/start.sh

ENTRYPOINT ["start.sh"]
