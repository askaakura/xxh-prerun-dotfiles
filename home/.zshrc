export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

# top priority to load starship
[ -f "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh" 2>/dev/null

eval "$(fzf --zsh)"
[ -f "$HOME/.xxh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "$HOME/.xxh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" 2>/dev/null
[ -f "$HOME/.xxh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "$HOME/.xxh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 2>/dev/null
[ -f "$HOME/projects/fzf-tab-completion/zsh/fzf-zsh-completion.sh" ] && source "$HOME/projects/fzf-tab-completion/zsh/fzf-zsh-completion.sh"

plugins=(
        alias-finder
        asdf
        aws
        colored-man-pages
        colorize
        fzf
        fzf-zsh-plugin
        git
        zsh-syntax-highlighting
)

alias gfa="git fetch --all"
alias gfp="gfa && ggpull"

#bindkey '^I' fzf_completion

# alias-finder plugin settings
zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes # disabled by default

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
