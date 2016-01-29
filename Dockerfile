FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get -y install mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

ENV APP_ID myAppId
ENV MASTER_KEY mySecretMasterKey
ENV FILE_KEY optionalFileKey

EXPOSE 8080 27017 

CMD [ "npm", "start" ]


