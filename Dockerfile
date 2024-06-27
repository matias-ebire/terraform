# Usa una imagen base con Apache y PHP
FROM php:7.4-apache

# Instala las extensiones necesarias para WordPress
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia los archivos de WordPress al contenedor
COPY . /var/www/html/

# Configura el acceso a la base de datos RDS
ENV DB_HOST wordpressdb-instance.cw1z2x3y4z5x.sa-east-1.rds.amazonaws.com
ENV DB_NAME wordpressdb
ENV DB_USER admin
ENV DB_PASSWORD mysecretpassword

# Expone el puerto 80 para Apache
EXPOSE 80
