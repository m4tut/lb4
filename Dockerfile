FROM eclipse-temurin:17-jdk-alpine

# Установка curl в Alpine Linux
RUN apk add --no-cache curl

# Копирование JAR-файла приложения
COPY build/libs/*.jar /app.jar

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "/app.jar"]