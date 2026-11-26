#!/bin/bash
set -e

echo "Ativando arquitetura de 32 bits..."
sudo dpkg --add-architecture i386

echo "Atualizando pacotes..."
sudo apt update

echo "Instalando dependências gráficas..."
sudo apt install -y \
  mesa-utils \
  libgl1-mesa-dri \
  libglx-mesa0 \
  mesa-vulkan-drivers \
  libgl1-mesa-dri:i386 \
  libglx-mesa0:i386 \
  libc6:i386 \
  xterm \
  x11-apps

echo "Instalando Steam..."
sudo apt install -y steam-installer steam-devices

echo "Instalação concluída!"
echo "Para iniciar: STEAM_RUNTIME=1 steam -no-browser"
