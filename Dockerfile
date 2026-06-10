# syntax=docker/dockerfile:1

FROM node:24-alpine
WORKDIR /app

# Install compilation tools required by sqlite3 / node-gyp
RUN apk add --no-cache python3 make g++

COPY . .
RUN npm install --omit=dev

CMD ["node", "src/index.js"]
EXPOSE 3000