# PCSX2 CoverSync 🎮

Um utilitário multiplataforma (Linux / Windows) elegante e automatizado para o emulador PCSX2. Ele escaneia sua biblioteca de jogos de PS2, baixa automaticamente as capas faltantes (em formato 2D ou 3D) e inicia o emulador de forma transparente.

## 📌 Funcionalidades

* **Sincronização Automática:** Detecta os jogos (ISOs, CHDs, etc) através de suas Serials e baixa a arte de capa correspondente.
* **Auto-Detecção de Ambiente:** Localiza automaticamente a instalação do PCSX2 (Flatpak, AppImage, QT) e a pasta de jogos em distribuições Linux e no Windows.
* **Interface Moderna:** Construída em Tkinter com design inspirado na paleta Libadwaita/GNOME.
* **Stand-alone:** A arte do aplicativo é embutida via Base64, dispensando o gerenciamento de múltiplos arquivos após a compilação final.

---

## ⬇️ Download (Versões Prontas)

Caso não queira compilar o programa por conta própria, você pode baixar os arquivos executáveis já compilados e prontos para uso (tanto para Linux quanto para Windows) diretamente na aba de lançamentos.

👉 **[Acesse a aba Releases aqui para baixar a última versão](https://github.com/SEU_USUARIO/SEU_REPOSITORIO/releases)**

---

## 🛠️ Como rodar a partir do Código Fonte

Certifique-se de ter o Python 3 instalado em sua máquina. O projeto necessita da biblioteca `Pillow` para o processamento nativo das imagens.

```bash
# Instale a dependência de imagem
pip install Pillow

# Execute a aplicação
python3 pcsx2_launcher.py
```

---

## 📦 Compilando o Executável

Você pode gerar um binário único (`--onefile`) para o seu sistema usando o PyInstaller. A logo já está embutida no código, então a compilação é limpa e direta.

### 🐧 Compilando no Linux

```bash
pip install pyinstaller Pillow
pyinstaller --onefile --noconsole pcsx2_launcher.py
```
O arquivo gerado estará na pasta `dist/` com o nome `pcsx2_launcher`.

### 🪟 Compilando no Windows (.exe)

Para que o arquivo `.exe` fique com a logo nativa do Windows Explorer, converta a imagem `logo.png` para `logo.ico` (usando um site gratuito) e coloque na mesma pasta. Em seguida, rode:

```cmd
pip install pyinstaller Pillow
pyinstaller --onefile --noconsole --icon=logo.ico pcsx2_launcher.py
```
O arquivo `pcsx2_launcher.exe` gerado estará na pasta `dist\`.

---

## 🐧 Instalação e Integração no Linux (.desktop)

No Linux, executáveis nativos não embutem ícones no gerenciador de arquivos. Para que o programa apareça lindamente no seu Menu Iniciar com a logo, siga estes passos:

1. Baixe ou mova o executável compilado e a imagem `logo.png` para uma pasta definitiva (Ex: `~/Documentos/PCSX2_CoverSync/`).
2. Abra um editor de texto e crie um arquivo chamado `PCSX2_CoverSync.desktop`.
3. Cole o conteúdo abaixo (lembre-se de substituir `SEU_USUARIO` pelo nome de usuário correto do seu sistema):

```ini
[Desktop Entry]
Version=1.0
Type=Application
Name=PCSX2 CoverSync
Comment=Sincronize as capas e inicie sua biblioteca de jogos de PS2.
Exec=/home/SEU_USUARIO/Documentos/PCSX2_CoverSync/pcsx2_launcher
Icon=/home/SEU_USUARIO/Documentos/PCSX2_CoverSync/logo.png
Terminal=false
Categories=Game;Emulator;Utility;
```

4. Salve o arquivo e mova-o para o diretório de atalhos do seu usuário:
`~/.local/share/applications/`
5. Clique com o botão direito no arquivo `.desktop`, vá em **Propriedades** e marque a opção para **Permitir execução**. Pronto! O app aparecerá no menu do sistema.