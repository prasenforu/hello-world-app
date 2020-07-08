FROM node:8.12.0
RUN npm install -g yarn

COPY package.json .
COPY yarn.lock .
RUN yarn install --production

COPY dist/ .

CMD ["node", "server.js"]
