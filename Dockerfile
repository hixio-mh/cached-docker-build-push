FROM node:14.17.6-alpine3.11

WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm ci

COPY . .

CMD ["sh"]
# CMD ["node", "/app/bin/cached-docker-build-push.js"]
