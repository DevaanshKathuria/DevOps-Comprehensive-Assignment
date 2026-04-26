FROM node:22-alpine

WORKDIR /app

COPY backend/package*.json ./

COPY backend/ .

RUN npm install --production

EXPOSE 80

ENV PORT=80

CMD ["node", "server.js"]