FROM node:8.2.1-alpine

WORKDIR /src

ADD ./package.json ./package.json

RUN (npm install)

ADD ./tsconfig.json ./tsconfig.json
ADD ./tslint.json ./tslint.json
ADD ./public ./public
ADD ./src ./src

RUN (npm run build)

CMD ['npm', 'start']
