#!/bin/bash

echo "🚀 Iniciando a instalação do PCSX2 CoverSync..."

# 1. Verifica e instala dependências via pip
echo "📦 Instalando dependências..."
pip install -r requirements.txt

# 2. Define o diretório de instalação
INSTALL_DIR="$HOME/.local/share/PCSX2_CoverSync"
# Se a pasta já existir, ele remove a versão antiga para evitar conflitos
if [ -d "$INSTALL_DIR" ]; then
    echo "⚠️ Versão anterior encontrada. Atualizando..."
    rm -rf "$INSTALL_DIR"
fi
mkdir -p "$INSTALL_DIR"

# 3. Copia os arquivos necessários
echo "📂 Movendo arquivos para $INSTALL_DIR..."
cp PCSX2_CoverSync.py "$INSTALL_DIR/"
cp logo.png "$INSTALL_DIR/"

# 4. Cria o atalho .desktop
echo "📝 Criando atalho no menu..."
DESKTOP_FILE="$HOME/.local/share/applications/PCSX2_CoverSync.desktop"

cat <<EOF > "$DESKTOP_FILE"
[Desktop Entry]
Version=1.0
Type=Application
Name=PCSX2 CoverSync
Comment=Sincronizador de capas para PCSX2
Exec=python3 $INSTALL_DIR/PCSX2_CoverSync.py
Icon=$INSTALL_DIR/logo.png
Terminal=false
Categories=Game;Emulator;Utility;
EOF

chmod +x "$DESKTOP_FILE"

echo "✅ Instalação concluída com sucesso!"
echo "Agora você pode encontrar o PCSX2 CoverSync no seu menu de aplicativos."