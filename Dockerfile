# Базовый образ Node.js (можно указать конкретную версию, например node:18)
FROM node:latest

# Создаем директорию для приложения
RUN mkdir -p /app
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем исходный код приложения
COPY . .

# Открываем порт (замените на нужный вам)
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "start"]