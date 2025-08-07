# Usa una imagen oficial de Node.js
FROM node:18

# Establece directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos al contenedor
COPY . .

# Instala dependencias
RUN npm install

# Soluciona el error de OpenSSL
ENV NODE_OPTIONS=--openssl-legacy-provider

# Expone el puerto
EXPOSE 4200

# Comando para ejecutar Angular
CMD ["npm", "start"]
