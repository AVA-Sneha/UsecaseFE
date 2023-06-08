FROM node:16.13.1-alpine

WORKDIR /code

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "start"]
