#TODO Configure o Dockerfile
FROM node:16

WORKDIR /app

copy PACKAGE*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
