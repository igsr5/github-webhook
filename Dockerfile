FROM node:20

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install --immutable

COPY . .
RUN yarn build

CMD ["yarn", "start"]
