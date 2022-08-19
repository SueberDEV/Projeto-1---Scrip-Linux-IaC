#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /fin
mkdir /con

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_FIN
groupadd GRP_CON

echo "Criando usuários..."

useradd User1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd User2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd User3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd User4 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN
useradd User5 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN
useradd User6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FIN

useradd User7 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_CON
useradd User8 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_CON
useradd User0 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_CON

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /FIN
chown root:GRP_SEC /CON

chmod 770 /adm
chmod 770 /fin
chmod 770 /con
chmod 777 /publico

echo " Processos executados com sucesso!"

