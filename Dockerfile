# Базовый образ с Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install flask

# Копируем приложение в контейнер
COPY app1.py /app/app1.py

# Устанавливаем рабочую директорию
WORKDIR /app

# Указываем, какой порт будет слушать контейнер
EXPOSE 80

# Запускаем приложение
CMD ["python", "app1.py"]
