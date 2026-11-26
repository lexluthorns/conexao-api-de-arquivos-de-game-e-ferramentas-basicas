#!/bin/bash
set -e

cd "$(dirname "$0")"

if [ ! -f paper-1.20.1-196.jar ]; then
    echo "Paper não encontrado. Execute scripts/download-paper.sh primeiro."
    exit 1
fi

java -Xms512M -Xmx1700M \
  -jar paper-1.20.1-196.jar nogui
