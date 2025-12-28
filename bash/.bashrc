# If not running interactively, don't do anything
[[ $- != *i* ]] && return 0 2>/dev/null

# Add directory to PATH if not already present
path_add() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) PATH="$1:$PATH" ;;
  esac
}

# Oh My Bash configuration
export OSH="$HOME/.oh-my-bash"
OSH_THEME="agnoster"
OMB_USE_SUDO=true
OMB_PROMPT_SHOW_PYTHON_VENV=true

completions=(git composer ssh)
aliases=(general)
plugins=(git bashmarks)

# Enable tmux auto attach if not inside VS Code
if [[ "$TERM_PROGRAM" != "vscode" ]]; then
  plugins+=(tmux-autoattach)
fi

# Load Oh My Bash
source "$OSH/oh-my-bash.sh"

# Default editor
export EDITOR=nano

# Apply wal colors
if [[ -f "$HOME/.cache/wal/sequences" ]]; then
  cat "$HOME/.cache/wal/sequences"
fi

if [[ -f "$HOME/.cache/wal/colors-tty.sh" ]]; then
  source "$HOME/.cache/wal/colors-tty.sh"
fi

# Local user paths
path_add "$HOME/.local/bin"
path_add "/usr/share/safe-rm/bin"

# Perl local::lib
path_add "$HOME/perl5/bin"
export PERL5LIB="$HOME/perl5/lib/perl5"
export PERL_LOCAL_LIB_ROOT="$HOME/perl5"
export PERL_MB_OPT='--install_base "$HOME/perl5"'
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT/bin" ]]; then
  path_add "$PYENV_ROOT/bin"
fi

# LM Studio
path_add "$HOME/.lmstudio/bin"

# Export PATH once (idempotent)
export PATH

# Pyenv init
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init - bash)"
  eval "$(pyenv virtualenv-init -)"
fi

