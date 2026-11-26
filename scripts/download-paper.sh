#!/bin/bash
set -e

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SERVER_DIR="$PROJECT_DIR/servers/paper"

mkdir -p "$SERVER_DIR"
cd "$SERVER_DIR"

wget -O paper-1.20.1-196.jar \
"https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar"

echo "Paper baixado em:"
echo "$SERVER_DIR"
