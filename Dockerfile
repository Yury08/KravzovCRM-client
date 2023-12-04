FROM node:16-alpine

ENV APP_HOME=/client

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY package*.json ./

RUN npm install

COPY . $APP_HOME

CMD ["npm", "start"]