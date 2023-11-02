#!/bin/bash

# Exibe uma mensagem de boas-vindas
echo "Bem-vindo ao meu script de IAC, que vai criar nossa infraestrutura"

# Gerando estutura de diretórios
echo "Iniciando com a criação da estrutura de diretórios"

mkdir /publico
mkdir /admin
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso"

# Criando grupos de usuários

echo "Criando grupos de usuários"

groupadd grp_admin
groupadd grp_ven
groupadd grp_sec

echo "Grupos criados com sucesso"

# Criando usuários

echo "Criando usuários"

# Usuários da área administrativa
useradd carlos_santos -m -g grp_admin -s /bin/bash -c "Administrativo Carlos Santos" -p $(openssl passwd -6 Senha123) 
useradd maria_silva -m -g grp_admin -s /bin/bash -c "Administrativo Maria da Silva" -p $(openssl passwd -6 Senha123) 
useradd joao_pedro -m -g grp_admin -s /bin/bash -c "Administrativo João Pedro" -p $(openssl passwd -6 Senha123) 

echo "Criado usuários da área administrativa"

# Usuários da área de vendas
useradd debora_silva -m -g grp_ven -s /bin/bash -c "Vendas Débora da Silva" -p $(openssl passwd -6 Senha123) 
useradd sebastiana_maria -m -g grp_ven -s /bin/bash -c "Vendas Sebastiana Maria" -p $(openssl passwd -6 Senha123) 
useradd roberto_carlos -m -g grp_ven -s /bin/bash -c "Vendas Roberto Carlos" -p $(openssl passwd -6 Senha123) 

echo "Criado usuários da área de vendas"

# Usuários da área de segurança
useradd josefina_silva -m -g grp_sec -s /bin/bash -c "Segurança Josefina da Silva" -p $(openssl passwd -6 Senha123) 
useradd amanda_silva -m -g grp_sec -s /bin/bash -c "Segurança Amanda da Silva" -p $(openssl passwd -6 Senha123) 
useradd rogerio_silva -m -g grp_sec -s /bin/bash -c "Segurança Rogerio da Silva" -p $(openssl passwd -6 Senha123) 

echo "Criado usuários da área de segurança"

# Ajustando permissôes dos diretórios

echo "Ajustando permissões dos diretórios"

chown root:grp_admin /admin
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /admin
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

# Script finalizado com sucesso

echo "Script finalizado com sucesso"











