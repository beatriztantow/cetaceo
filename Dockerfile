# Descrição do que vai gerar a imagem no final das contas.

# Referencia uma imagem base para a imagem que está sendo criada
FROM node:19.7.0-alpine3.16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
COPY . .
RUN npm run build
CMD [ "node", "dist/main.js" ] 