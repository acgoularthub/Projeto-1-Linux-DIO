#!/bin/bash

echo "Automation script started"
echo "..."
echo "Creating directories"

mkdir /publico /adm /ven /sec

echo "Creating GROUPS..."

groupadd GRP_ADM GRP_VEN GRP_SEC

echo "Creating USERS..."

useradd carlos -m -s /bin/bash -p Senha123 -e -G GRP_ADM
useradd maria -m -s /bin/bash -p Senha123 -e -G GRP_ADM
useradd joao -m -s /bin/bash -p Senha123 -e -G GRP_ADM

useradd sebastiana -m -s /bin/bash -p Senha123 -e -G GRP_VEN
useradd debora -m -s /bin/bash -p Senha123 -e -G GRP_VEN
useradd roberto -m -s /bin/bash -p Senha123 -e -G GRP_VEN

useradd rogerio -m -s /bin/bash -p Senha123 -e -G GRP_SEC
useradd josefina -m -s /bin/bash -p Senha123 -e -G GRP_SEC
useradd amanda -m -s /bin/bash -p Senha123 -e -G GRP_SEC

echo "Changing permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "finished!"