FROM node:11-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY package.json .
COPY views/ views/
COPY server.js .
EXPOSE 8080
CMD [ "npm", "start" ]

