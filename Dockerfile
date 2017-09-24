FROM node:6-alpine

RUN adduser -D app
ENV HOME=/home/app

COPY package.json yarn.lock $HOME/sample-app/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/sample-app
RUN yarn

USER root
COPY . $HOME/sample-app
RUN chown -R app:app $HOME/*
USER app

CMD ["node", "index.js"]
