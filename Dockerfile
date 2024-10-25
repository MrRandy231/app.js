# Usa la imagen oficial de Node.js como base
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia los archivos de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]
