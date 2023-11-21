FROM node:latest

RUN mkdir /app
RUN apt update -y

# set path
WORKDIR /app
# COPY package*.json ./
# RUN npm create vite@latest /app -- --template react -y
# RUN npm install @reduxjs/toolkit react-redux

COPY . .

RUN npm install --silent

EXPOSE 8080

CMD ["npm", "run", "dev"]
