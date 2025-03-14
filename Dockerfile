FROM ubuntu
MAINTAINER Amir
WORKDIR /app
RUN apt update
COPY package*.json ./
RUN sudo npm install
COPY . .
ENV PORT=3700
EXPOSE 3700
CMD ["npm":"start"]
# RUN sudo apt instal nodejs
# CMD ["echo", "Hello World"]