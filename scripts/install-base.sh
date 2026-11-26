#!/bin/bash
set -e

echo "Atualizando Debian..."
sudo apt update
sudo apt upgrade -y

echo "Instalando ferramentas básicas..."
sudo apt install -y \
  git curl wget nano htop screen unzip

echo "Ferramentas básicas instaladas!"
