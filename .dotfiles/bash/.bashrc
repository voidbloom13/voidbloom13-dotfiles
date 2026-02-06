# Sources .profile
. ~/.profile

# General settings
export EDITOR=vim
export HISTCONTROL=ignoredups

# Default PS1 Prompt
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)';
PS1='\[\e[38;5;33m\]\d\[\e[0m\] \[\e[38;5;33m\]|\[\e[0m\] \[\e[38;5;33m\]\t\[\e[0m\] \[\e[95m\]\u@\h\n\[\e[91m\]\w\[\e[38;5;220m\][${PS1_CMD1}]\[\e[0m\] \[\e[38;5;92m\]\$\[\e[0m\]'

# Bootstraps Oh-My-Posh
export PATH=$PATH:$HOME/.local/bin
if [[ -z "$(command -v oh-my-posh)" ]]; then
    curl -s https://ohmyposh.dev/install.sh | bash -s
fi
eval "$(oh-my-posh init bash --config "$HOME/voidbloom13-dotfiles/assets/void_catppuccin.omp.toml")"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
