#!/bin/bash
set -e

mkdir -p ~/.ssh
chmod 700 ~/.ssh

if [ ! -f ~/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 \
      -C "00001107571546sp@al.educacao.sp.gov.br"
else
    echo "Chave SSH já existe."
fi

echo "Chave pública:"
cat ~/.ssh/id_ed25519.pub

echo "Cadastre no GitHub:"
echo "https://github.com/settings/ssh/new"

echo "Teste depois com:"
echo "ssh -T git@github.com"
