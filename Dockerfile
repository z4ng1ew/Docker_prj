# Используем базовый образ Node.js
FROM node:16-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем оставшиеся файлы
COPY . .

# Открываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["node", "app.js"]

