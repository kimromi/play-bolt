FROM node:latest

WORKDIR /opt/bolt
ADD app.js .
ADD package.json .

RUN npm install

ENTRYPOINT ["node", "app.js"]
