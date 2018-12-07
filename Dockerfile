FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3001

ARG HOSTNAME
ENV HOSTNAME 54.146.229.91

ARG PORT
ENV PORT 3001

RUN npm run build

CMD [ "npm", "start"]