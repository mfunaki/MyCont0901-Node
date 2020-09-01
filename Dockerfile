# Docker Hubから入手できる node の最新のLTS
FROM node:12

# package.json と package-lock.json の両方をコンテナにコピー
COPY package*.json ./
RUN npm install express
RUN npm install jest supertest

# ポート番号8080でサーバ起動
EXPOSE 8080
CMD [ "node", "app.js" ]