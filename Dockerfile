# Dockerfile
FROM node:22-slim
RUN npm install -g web-ext
#実行用スクリプト追加
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
WORKDIR /work
ENTRYPOINT ["/entrypoint.sh"]
