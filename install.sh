#!/bin/bash
set -e

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "================================"
echo "     CHROME LINUX SETUP"
echo "================================"

bash "$PROJECT_DIR/scripts/install-base.sh"
bash "$PROJECT_DIR/scripts/install-java.sh"

echo ""
echo "Instalação básica concluída!"
echo "Steam e Paper possuem instaladores separados."
