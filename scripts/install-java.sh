#!/bin/bash
set -e

sudo apt update
sudo apt install -y openjdk-21-jre

echo "Versão instalada:"
java -version
