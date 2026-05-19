export EDITOR="nvim"
export PATH="$HOME/.local/bin:$PATH"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
