FROM node:11-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY package.json .
COPY content/ content/
COPY server.js .
EXPOSE 8080
CMD [ "npm", "start" ]

