# Move to home directory
cd ~

# Alias
alias vi="sudo -E vi"
alias py="python3 -m"
alias .="sudo -E vi ."

# Activate virus environment in Python
alias venv="source .venv/bin/activate"

# Trying to be Windows
alias cls="clear"
_menu_complete_files_only() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -f -- "$cur"))
}

# Auto start tmux on login
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
    tmux attach-session -t main || tmux new-session -s main
fi

# Disable bash history
export HISTFILE=/dev/null
export HISTSIZE=10
export HISTFILESIZE=0
set -o history
