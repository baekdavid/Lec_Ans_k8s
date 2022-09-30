FROM node:14-alpine

WORKDIR /app

COPY . .

# installation des dépendances (package.json)
RUN npm install

CMD ["node", "app.js"]