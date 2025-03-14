FROM node:18
# MAINTAINER Amir
USER root
RUN apt-get update && \
    apt-get install -y build-essential
WORKDIR /app
# RUN npm config set unsafe-perm true
COPY package*.json ./
# RUN apt-get update && \
    # apt-get install -y build-essential

# RUN npm install --verbose

RUN npm ci --verbose
# RUN npm ci
# RUN npm config set user 0 && \
#     npm config set unsafe-perm true
# RUN npm cache clean --force
# RUN npm cache clean --force && \ npm ci --verbose

COPY . .
RUN npm run build
# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
ENV PORT=3700
EXPOSE 3700
USER node
CMD ["npm":"start"]
# RUN sudo apt instal nodejs
# CMD ["echo", "Hello World"]