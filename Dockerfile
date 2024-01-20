FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json /app/src

RUN npm install

COPY . /app/src

EXPOSE 3000

CMD ["npm", "start"]