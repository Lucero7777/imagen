# Etapa 1: Build de la aplicación
FROM node:20-alpine AS build

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package.json ./
COPY package-lock.json ./ 

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente
COPY . .

# Genera la aplicación optimizada para producción
RUN npm npm run build

# Etapa 2: Servir la aplicación con un servidor web estático
FROM nginx:alpine

# Copia el build generado al directorio de Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Expone el puerto por defecto de Nginx
EXPOSE 80

# Comando por defecto para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]