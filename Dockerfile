FROM node:20-slim

ARG TOKEN

USER root
RUN apt update
RUN apt install -y git

USER node
ENV TOKEN=${TOKEN}

WORKDIR /home/node
ADD entrypoint.sh /home/node/entrypoint.sh

RUN git clone --recurse-submodules --shallow-submodules https://lost-RD:${TOKEN}@github.com/lost-RD/pokerogue-docker.git

EXPOSE 8000
ENTRYPOINT ["/bin/sh", "/home/node/entrypoint.sh"]
