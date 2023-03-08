#!/bin/bash

# Descargar la imagen de Nginx
docker pull nginx:1.22.1-alpine

# Crea y ejecuta el contenedor de Nginx
docker run --name bootcamp-web -d -p 9999:80 nginx:1.22.1-alpine

# Copia el contenido de la carpeta web en el contenedor de Nginx
docker cp web/. bootcamp-web:/usr/share/nginx/html/

# Ejecuta el comando ls dentro del contenedor de nginx para verificar que se han copiado los archivos
docker exec bootcamp-web ls /usr/share/nginx/html/

