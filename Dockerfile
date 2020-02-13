FROM node:12-stretch

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

RUN npm run build

CMD [ "npm", "run", "start:prod" ]