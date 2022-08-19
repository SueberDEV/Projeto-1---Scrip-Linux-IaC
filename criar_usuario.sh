#!/bin/bash


echo "Criando usuários do sistema____"

useradd user1 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Mudarsenha123)
passwd user1 -e

useradd user2 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Mudarsenha123)
passwd user2 -e

useradd user3 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Mudarsenha123)
passwd user3 -e

useradd user4 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Mudarsenha123)
passwd user4 -e

echo "Usuários cadastrados com sucesso!"

