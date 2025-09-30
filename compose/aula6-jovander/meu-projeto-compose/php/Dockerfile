# php/Dockerfile

# Usamos a mesma imagem base com Apache e PHP
FROM php:8.2-apache

# A única coisa que precisamos instalar é a extensão para o PHP poder se conectar ao MySQL
RUN docker-php-ext-install pdo_mysql