# PCSX2 CoverSync: Sincronização Automática de Capas para PCSX2 🎮

O PCSX2 CoverSync é um utilitário de código aberto, elegante e totalmente automatizado, desenvolvido para elevar sua experiência no emulador [PCSX2](https://pcsx2.net/).

Cansado de bibliotecas de jogos desorganizadas ou capas faltando? O CoverSync resolve isso para você! Ele escaneia sua biblioteca de PS2, identifica os jogos e baixa automaticamente as capas faltantes oferecendo suporte tanto para o formato 2D clássico quanto para o 3D moderno.

## 📌 Funcionalidades

* **Multiplataforma:** Compatibilidade total com Linux e Windows.
* **Automação Inteligente:** Detecta os jogos (ISOs, CHDs, CSO, etc.) através de suas Serials e baixa a arte de capa de servidores públicos em formato 2D ou 3D.
* **Auto-Detecção de Ambiente:** Localiza automaticamente a instalação do PCSX2 (Flatpak, AppImage, QT) e a pasta das capas em distribuições Linux e no Windows.
* **Integração Transparente:** Inicie o PCSX2 diretamente pelo utilitário, com sua biblioteca sempre atualizada.
* **Interface Moderna:** Construída em Tkinter com design inspirado na paleta Libadwaita/GNOME.
* **Código Aberto:** Desenvolvido com transparência e foco em performance.

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

## 🛠️ Instalação e Execução

### 🐧 No Linux (Recomendado)
O projeto inclui um script de instalação automática que configura as dependências e cria o atalho no menu do seu sistema:
```
chmod +x install.sh
./install.sh
```

### 🪟 Instalação Manual (Linux / Windows)
1. **Instale as dependências:**
   ```
   pip install -r requirements.txt
   ```
2. **Execute o programa:**
   * **Linux:** `python3 PCSX2_CoverSync.py`
   * **Windows:** `python PCSX2_CoverSync.py`

---

### 📦 Compilando o Executável

Você pode gerar um binário único (`--onefile`) para o seu sistema. Certifique-se de instalar o `pyinstaller` antes:

```bash
pip install pyinstaller
```

### 🐧 Compilando no Linux
```bash
pyinstaller --onefile --noconsole PCSX2_CoverSync.py
```
O arquivo gerado estará na pasta `dist/` com o nome `PCSX2_CoverSync`.

### 🪟 Compilando no Windows (.exe)
```cmd
python -m PyInstaller --onefile --noconsole --icon=logo.ico PCSX2_CoverSync.py
```
O arquivo `PCSX2_CoverSync.exe` gerado estará disponível na pasta `dist\`.

---

## 🐧 Instalação e Integração no Linux - Forma manual (.desktop)

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
