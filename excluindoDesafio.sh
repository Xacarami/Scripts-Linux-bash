#!/bin/bash

echo excluindo usuários...

userdel -r -f guest10
userdel -r -f guest11
userdel -r -f guest12
userdel -r -f guest13
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao_
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio


echo exclusao de usuários completa
echo excluindo arquivos

rm -r -f /adm
rm -r -f /publico
rm -r -f /ven
rm -r -f /sec

echo remoção de diretórios concluída
echo excluindo grupos

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
