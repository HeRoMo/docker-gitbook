FROM node:10.12.0-alpine
LABEL maintainer="HeRoMo"

RUN yarn global add gitbook-cli

COPY ./start.sh /usr/bin/
RUN chmod 755 /usr/bin/start.sh

ENTRYPOINT ["start.sh"]
