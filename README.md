# Chrome Linux Setup

Instalador e central de ferramentas para Debian 13 no Chromebook Linux.

## Ferramentas básicas

- Git
- Curl
- Wget
- Nano
- Htop
- Screen
- Unzip

## Java

- OpenJDK 21
- Suporte a servidores Paper

## Steam

- Steam Installer
- Steam Devices
- Bibliotecas gráficas 32 bits
- Ferramentas de teste gráfico

## SSH

Criação e configuração de chave SSH para GitHub.

## Instalação básica

```bash
chmod +x install.sh scripts/*.sh servers/paper/start.sh
./install.sh
bash scripts/setup-git.sh
bash scripts/setup-ssh.sh
bash scripts/install-steam.sh
bash scripts/download-paper.sh
./servers/paper/start.sh
git clone git@github.com:lexluthorns/mcserver.git

## 12. Impedir que arquivos pesados sejam enviados ao GitHub

Crie `.gitignore`:

```bash
cat > .gitignore <<'EOF'
# Servidores Minecraft
servers/paper/*.jar
servers/paper/logs/
servers/paper/world/
servers/paper/world_nether/
servers/paper/world_the_end/
servers/paper/plugins/

# Segredos e chaves
.env
*.pem
id_rsa
id_ed25519
*.key

# Arquivos temporários
*.log
*.tmp
