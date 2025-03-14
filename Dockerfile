FROM node:18
MAINTAINER Amir
RUN apt-get update && \
    apt-get install -y build-essential
WORKDIR /app
COPY package*.json ./
# RUN apt-get update && \
    # apt-get install -y build-essential

RUN npm install --verbose
# RUN npm ci
COPY . .
RUN npm run build
# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
ENV PORT=3700
EXPOSE 3700
CMD ["npm":"start"]
# RUN sudo apt instal nodejs
# CMD ["echo", "Hello World"]