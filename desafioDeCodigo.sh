#!/bin/bash

echo criando arquivos

mkdir /ven
mkdir /adm
mkdir /sec
mkdir /publica

echo criação completa
echo criando grupos

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo criação de grupos completa
echo criação de usuários

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao_ -c "Joao_" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo criação de usuários completa
echo mudança de permissões dos diretórios

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo permissões declaradas para cada pasta
echo decidindo donos e grupos para cada pasta

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo donos e grupos das pastas já definidos
echo processo Finalizado!
