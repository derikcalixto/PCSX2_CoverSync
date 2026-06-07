# PCSX2_CoverSync: Sincronização Automática de Capas para PCSX2 🎮

Um utilitário multiplataforma (Linux / Windows) de código aberto, elegante e automatizado desenvolvido especificamente para o emulador oficial [PCSX2](https://pcsx2.net/). Ele escaneia sua biblioteca de jogos de PS2, baixa automaticamente as capas faltantes (em formato 2D ou 3D) de servidores públicos e inicia o emulador de forma totalmente transparente.

## 📌 Funcionalidades

* **Sincronização Automática:** Detecta os jogos (ISOs, CHDs, CSO, etc.) através de suas Serials e baixa a arte de capa correspondente.
* **Auto-Detecção de Ambiente:** Localiza automaticamente a instalação do PCSX2 (Flatpak, AppImage, QT) e a pasta das capas em distribuições Linux e no Windows.
* **Interface Moderna:** Construída em Tkinter com design inspirado na paleta Libadwaita/GNOME.

---

## ⬇️ Download (Versões Prontas)

Caso não queira compilar o programa por conta própria, você pode baixar os arquivos executáveis já compilados e prontos para uso (tanto para Linux quanto para Windows) diretamente na página oficial de lançamentos:

👉 **[Baixar PCSX2 CoverSync v1.0.0 Nativamente Aqui](https://github.com/derikcalixto/PCSX2_CoverSync/releases/tag/v1.0.0)**

---

## 🛡️ Nota sobre o alerta do Windows (SmartScreen)

Ao executar o `PCSX2_CoverSync.exe` pela primeira vez, você pode ver uma janela azul do **Windows Defender SmartScreen** informando que *"O Windows protegeu o seu PC"*. 

**Isso é um comportamento normal para softwares desenvolvidos de forma independente.** Como o executável não possui uma assinatura digital paga, o Windows não consegue verificar a "identidade" do desenvolvedor automaticamente.

**Como prosseguir:**
1. Clique em **"Mais informações"** na janela azul.
2. O botão **"Executar assim mesmo"** irá aparecer.
3. Clique nele e o aplicativo abrirá normalmente.

*Pode ficar tranquilo: o código é 100% aberto e você pode verificar cada linha do funcionamento no arquivo `PCSX2_CoverSync.py` aqui no repositório!*

---

## 🛠️ Requisitos e Execução (Código Fonte)

Se você preferir rodar a aplicação diretamente a partir do código fonte, certifique-se de ter o [Python 3](https://www.python.org/) instalado na sua máquina (geralmente usuários de Windows precisam baixar o instalador oficial).

O projeto necessita apenas da biblioteca `Pillow` para o processamento nativo das imagens:

```bash
# Instale a dependência de imagem
pip install Pillow

# Execute a aplicação
python3 PCSX2_CoverSync.py
```

---

## 📦 Compilando o Executável

Você pode gerar um binário único (`--onefile`) para o seu sistema usando o PyInstaller. Como a logo já faz parte do DNA do código, a compilação é limpa.

### 🐧 Compilando no Linux

```bash
pip install pyinstaller Pillow
pyinstaller --onefile --noconsole PCSX2_CoverSync.py
```
O arquivo gerado estará na pasta `dist/` com o nome `PCSX2_CoverSync`.

### 🪟 Compilando no Windows (.exe)

Basta rodar o comando abaixo para gerar o executável:

```cmd
pip install pyinstaller Pillow
pyinstaller --onefile --noconsole --icon=logo.ico PCSX2_CoverSync.py
```

💡 **Nota sobre erros no Windows:** Caso o comando acima dê erro dizendo que o 'pyinstaller' não foi encontrado, significa que as variáveis de ambiente do seu sistema não atualizaram. Use este comando alternativo que força o Python a chamar o módulo diretamente:

```cmd
python -m PyInstaller --onefile --noconsole --icon=logo.ico PCSX2_CoverSync.py
```
O arquivo `PCSX2_CoverSync.exe` gerado estará disponível na pasta `dist\`.

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
Comment=Sincronize suas capas e inicie o PCSX2.
Exec=/home/SEU_USUARIO/Documentos/PCSX2_CoverSync/PCSX2_CoverSync
Icon=/home/SEU_USUARIO/Documentos/PCSX2_CoverSync/logo.png
Terminal=false
Categories=Game;Emulator;Utility;
```

4. Salve o arquivo e mova-o para o diretório de atalhos do seu usuário: `~/.local/share/applications/`
5. Clique com o botão direito no arquivo `.desktop` gerado (pelo seu menu ou gerenciador), vá em **Propriedades > Permissões** e marque a opção para **Permitir execução**. O app já estará integrado nativamente ao seu sistema!

---

## 📄 Licença

Este projeto é de código aberto e está licenciado sob a **[Licença MIT](https://opensource.org/licenses/MIT)** - você é livre para modificar, distribuir e usar como quiser, contanto que mantenha os créditos originais.

---

## ☕ Apoie o Projeto

O **PCSX2 CoverSync** é um projeto de código aberto e gratuito. Se esta ferramenta facilitou sua vida e você deseja apoiar o meu trabalho, você pode contribuir de duas formas:

| Apoio via Pix (QR Code) | Apoio via Buy Me A Coffee |
| :--- | :--- |
| ![QR Code Pix](qrcode_pix.png) | [![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-Apoiar%20via%20BMC-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/derikcalixto) |

**Dados para contribuição via PIX:**
* **Chave:** `55.721.680/0001-24` (CNPJ)
* **Favorecido:** `55.721.680 DERIK CALIXTO DE FREITAS`

*Por favor, confira o nome do favorecido no momento do pagamento para garantir a segurança da transação.*

*Todo apoio é fundamental para que eu possa continuar dedicando tempo a este e outros projetos de código aberto. Muito obrigado!*
