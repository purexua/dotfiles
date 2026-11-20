# Locale
export LANG="en_US.UTF-8"

# Proxy
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
export all_proxy="socks5://127.0.0.1:7890"

## eza
export EZA_CONFIG_DIR="$HOME/.config/eza"
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'header' yes
zstyle ':omz:plugins:eza' 'links' yes
zstyle ':omz:plugins:eza' 'icons' yes

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

plugins=(
  git
  brew
  eza
  tmux
  golang
  buf
  colored-man-pages
  zsh-history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Completion
fpath=("$HOME/.docker/completions" $fpath)
autoload -Uz compinit
compinit

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/purexua/.lmstudio/bin"
# End of LM Studio CLI section

# Hermes Agent command
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
