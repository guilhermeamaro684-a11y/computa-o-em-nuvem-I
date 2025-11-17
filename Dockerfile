# usa a imagem oficial do PHP com Apache
FROM php:8.2-apache

# copia os arquivos da sua aplicação para o diretorio padrao do apache
COPY . /var/ww/html/

# habilita modulos adicionais do Apache (opicional)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exponha a porta padrao do apache
EXPOSE 80
