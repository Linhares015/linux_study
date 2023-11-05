#!/bin/bash

# Exibe uma mensagem de boas-vindas
echo "Bem-vindo ao meu script de IAC, que vai criar nossa infraestrutura para um server web"

# Instalando o Apache
echo "Instalando o Apache"  

apt install apache2 -y

echo "Apache instalado com sucesso"

# Instalando o wget caso não tenha

echo "Instalando o wget caso não tenha" 

apt install wget -y

echo "wget instalado com sucesso" 

# Instalando o unziop caso não tenha

echo "Instalando o unzip caso não tenha"

apt install unzip -y

echo "unzip instalado com sucesso"

# Baixando o repositório git do site    

echo "Baixando o repositório git do site"

cd /tmp

wget https://github.com/Linhares015/aula-devops-fundamentals/archive/refs/heads/main.zip

unzip main.zip

mv aula-devops-fundamentals-main/* /var/www/html/

echo "Repositório git baixado com sucesso"

# Script finalizado com sucesso

echo "Script finalizado com sucesso"    