FROM node:alpine
WORKDIR app
ENV NODE_ENV=production

COPY app.js .
COPY static .
COPY package.json .

RUN npm install

CMD ["node", "app.js"]
