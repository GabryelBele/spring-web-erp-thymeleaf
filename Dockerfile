# Usar a imagem oficial do OpenJDK para Java 17
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo JAR da aplicação para o container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expor a porta que a aplicação vai rodar (padrão do Spring Boot)
EXPOSE 8080

# Comando para rodar a aplicação Spring Boot
CMD ["java", "-jar", "demo.jar"]
