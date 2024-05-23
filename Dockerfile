FROM node:18.3-slim

USER node

WORKDIR /home/node
ADD entrypoint.sh /home/node/entrypoint.sh

EXPOSE 8000
ENTRYPOINT ["/bin/sh", "/home/node/entrypoint.sh"]
