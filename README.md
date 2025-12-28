# 🛠️ Meus Dotfiles

Este repositório contém minhas configurações personalizadas para Bash, Tmux e Vim, focadas em produtividade, automação de ambiente Python e estética integrada.

## 📋 Conteúdo

### 🐚 Bash (`.bashrc`)
Configuração robusta utilizando o framework **Oh My Bash**.
* **Tema:** Utiliza o tema `agnoster`.
* **Integração Visual:** Sincronização automática de cores com o **Pywal** (sequências de terminal e TTY).
* **Automação de Shell:**
    * Função inteligente `path_add` para evitar duplicatas no seu `$PATH`.
    * Auto-attach automático do **Tmux** (desabilitado quando detecta que está no VS Code).
* **Ferramentas Integradas:**
    * **Python:** Inicialização completa do `pyenv` e `virtualenv`.
    * **Perl:** Configuração de `local::lib` apontando para `~/perl5`.
    * **Binários:** Inclusão automática de caminhos para LM Studio e local bins.

### 🖥️ Tmux (`.tmux.conf`)
Terminal multiplexer configurado para persistência e facilidade de uso.
* **Persistência:** Utiliza `tmux-continuum` com salvamento automático a cada 15 minutos e restauração automática ao iniciar.
* **Integração de Clipboard:** Atalhos configurados (estilo Vim) para copiar diretamente para o clipboard do sistema via `xclip`.
* **Estética:** Suporte a 256 cores e tema sincronizado com o Pywal (`tmux-pywal-theme`).
* **Modo Vi:** Navegação e seleção de texto utilizando as keys do Vim.

### 📝 Vim (`.vimrc`)
* Configuração essencial com ativação de numeração de linhas (`set number`).

---

## 🚀 Instalação

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/dotfiles.git](https://github.com/seu-usuario/dotfiles.git) ~/dotfiles
    ```

2.  **Crie os links simbólicos:**
    ```bash
    ln -sf ~/dotfiles/.bashrc ~/.bashrc
    ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -sf ~/dotfiles/.vimrc ~/.vimrc
    ```

3.  **Instale os Gerenciadores de Plugins:**
    * [Oh My Bash](https://github.com/ohmybash/oh-my-bash)
    * [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm) (Após instalar, pressione `Prefix + I` dentro do Tmux).

---

## 🛠️ Requisitos Técnicos
Para o funcionamento total destas configurações, recomenda-se ter instalado:
* `pyenv` e `pyenv-virtualenv`.
* `xclip` (para o clipboard do Tmux).
* `pywal` (para as cores dinâmicas).
* `nano` (definido como editor padrão no shell).

---
