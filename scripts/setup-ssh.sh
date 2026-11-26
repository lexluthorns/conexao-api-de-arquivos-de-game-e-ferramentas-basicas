#!/bin/bash
set -e

mkdir -p ~/.ssh
chmod 700 ~/.ssh

if [ ! -f ~/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 \
      -C "00001107571546sp@al.educacao.sp.gov.br"
else
    echo "Uma chave SSH já existe. Não será sobrescrita."
fi

echo ""
echo "Sua chave pública:"
cat ~/.ssh/id_ed25519.pub

echo ""
echo "Cadastre essa chave no GitHub:"
echo "https://github.com/settings/ssh/new"
echo ""
echo "Depois teste com:"
echo "ssh -T git@github.com"
