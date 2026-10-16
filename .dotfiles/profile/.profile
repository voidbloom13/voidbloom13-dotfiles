# PATH EXTENTIONS
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:/snap/bin"
export PATH="$PATH:$HOME/.dotfiles/scripts"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"

# ALIASES
alias ll="eza -la"
alias ls="eza -a"
if [[ -x "$(command -v pgcli)" ]]; then
    alias psql="pgcli"
fi
