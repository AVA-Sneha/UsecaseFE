FROM node:16.13.1-alpine

WORKDIR /code

COPY package.json package.json

RUN npm install js-yaml

COPY . .

CMD ["npm", "run", "start"]
