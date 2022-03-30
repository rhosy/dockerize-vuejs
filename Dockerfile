FROM node:lts-alpine

#RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

#COPY . .

#RUN npm run build

RUN npm install

#EXPOSE 8080
#CMD ["http-server", "dist"]
CMD ["npm", "run", "serve"]

