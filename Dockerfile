FROM ubuntu
MAINTAINER Amir
WORKDIR /app
RUN apt update
COPY package*.json ./
RUN npm install
# RUN sudo apt instal nodejs
CMD ["echo", "Hello World"]