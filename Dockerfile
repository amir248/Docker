FROM ubuntu
MAINTAINER Amir
WORKDIR /app
RUN apt-get update && \
    apt-get install -y build-essential
COPY package*.json ./
# RUN sudo npm install
RUN npm ci
COPY . .
RUN npm run build
# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
ENV PORT=3700
EXPOSE 3700
CMD ["npm":"start"]
# RUN sudo apt instal nodejs
# CMD ["echo", "Hello World"]