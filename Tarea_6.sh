#! /bin/bash

#Script para instalar Docker y Docker-compose

echo "---- Iniciando instalacion de Docker ----"

#Se dirige al directorio principal

cd ~

#Actualizamos los paquetes

sudo apt-get update
sudo apt-get upgrade

#Instalamos dependencias 

sudo apt install apt-transport-https ca-certificates curl software-properties-common

#Agregamos clave GPG

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Agregamos el repositorio a la fuente del sistema

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

#Actualizamos

sudo apt update

#Instalamos Docker

sudo apt install docker-ce

#Comprobamos que esta instalado 

docker --version
echo "---- Docker ya se encuentra instalado ----"

#Agregando usuario como parte al grupo Docker 

sudo usermod -aG docker ${USER}

#(Para que el cambio sea valido es necesario reiniciar el equipo) 



#Docker-compose

echo "---- Iniciando instalacion de Docker-Compose ----"

#Descargamos el binario

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Damos permisos al binario

sudo chmod +x /usr/local/bin/docker-compose

#Comprobamos la instalacion 

docker-compose --version
echo "---- Docker-Compose ya se encuentra instalado ----"









