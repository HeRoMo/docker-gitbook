FROM node:10.13.0-slim
LABEL maintainer="HeRoMo"

ARG VERSION=3.2.3
LABEL version=$VERSION

# install apt packages
RUN mkdir -p /usr/share/man/man1 && \
    (echo "deb http://http.debian.net/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list) && \
    apt-get update -y && \
    apt-get install -t jessie-backports -y \
      openjdk-8-jdk \
      python \
      bzip2 \
      libgl1-mesa-glx \
      libxcomposite1 \
      calibre \
      graphviz

# install fonts
RUN apt-get install -y \
      fonts-ipafont \
      fonts-ipaexfont \
      fonts-noto fonts-noto-cjk

# cleanup apt
RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN yarn global add gitbook-cli svgexport

COPY ./start.sh /usr/bin/
RUN chmod 755 /usr/bin/start.sh

ENTRYPOINT ["start.sh"]
