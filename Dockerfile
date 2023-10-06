# Dockerfile
# preferred node version chosen here
FROM node:20-alpine

# Create the directory on the node image
# where our Next.js app will live
RUN mkdir -p /app

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD npm run dev