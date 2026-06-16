# 1. Usar una imagen base de Java 17 súper ligera (Alpine)
FROM eclipse-temurin:17-jdk-alpine

# 2. Crear una carpeta de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo ejecutable (.jar) de tu proyecto al contenedor
COPY target/*.jar app.jar

# 4. El comando que arrancará tu aplicación cuando se encienda el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]