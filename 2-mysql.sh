#!/bin/bash

# Descarga la imagen de MySQL
docker pull mysql:8

# Inicia el contenedor de MySQL
docker run --name db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8


# Inicia el contenedor de PHPMyAdmin
docker run --name myadmin -p 82:80 --link db:db -d phpmyadmin

