FROM node:20

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
COPY ./.yarn /app/.yarn
COPY ./.yarnrc.yml /app/

RUN yarn install --immutable

COPY . .
RUN yarn build

CMD ["yarn", "start"]
