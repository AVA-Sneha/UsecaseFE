FROM node:20.2.0-alpine@sha256:31ec13908b942ca8b2b05e523c4e4a0f303a89bd75e57a81a241b5fd35677f60 as builder

WORKDIR /src

COPY package*.json ./

RUN npm install --only=production

WORKDIR /src

COPY . .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]
