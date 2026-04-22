# go to home directory
cd ~

# run vi as root while keeping user environment
alias vi='sudo -E vi'

# browse the current folder as root while keeping user environment
alias .='sudo -E vi .'

# shorthand for running Python modules via: python3 -m
alias py='python3 -m'

# define 'venv' as a shortcut to activate the environment in the .venv folder
alias venv="source .venv/bin/activate"

# trying to be Windows
alias cls='clear'
_menu_complete_files_only() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -f -- '$cur'))
}

# if tmux is installed and not inside tmux, attach or create 'main' session
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
    tmux attach-session -t main || tmux new-session -s main
fi

# disable bash history
export HISTFILE=/dev/null
export HISTSIZE=10
export HISTFILESIZE=0
set -o history
