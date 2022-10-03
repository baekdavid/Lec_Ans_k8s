FROM node:14-alpine

WORKDIR /app

COPY package.json .

COPY app.js .

# installation des dépendances (package.json)
RUN npm install

CMD ["node", "app.js"]