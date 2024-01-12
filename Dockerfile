# Usar una imagen base con Node.js
FROM node:alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de configuración y de paquetes e instalar dependencias
COPY frontend/package.json frontend/package-lock.json ./
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY frontend/ ./

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
