# Load aliases
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

# Colors and order of things in terminal prompt
PS1='\[\e[96m\]\h\[\e[0m\]:\w\[\e[35m\]$(__git_ps1 " (%s)")\[\e[0m\] \u\$ '

# Autocomplete git branches
if [[ -r "$(xcode-select -p)/usr/share/git-core/git-completion.bash" ]]; then
    source "$(xcode-select -p)/usr/share/git-core/git-completion.bash"
fi

# Load dev keys and settings
if [[ -f ~/.bash_dev ]]; then
    source ~/.bash_dev
fi

# Show Git branch in prompt
if [[ -r "$(xcode-select -p)/usr/share/git-core/git-prompt.sh" ]]; then
    source "$(xcode-select -p)/usr/share/git-core/git-prompt.sh"
fi
GIT_PS1_SHOWDIRTYSTATE=1      # * unstaged, + staged
GIT_PS1_SHOWUNTRACKEDFILES=1  # % untracked files
GIT_PS1_SHOWUPSTREAM=auto     # < behind, > ahead, <> diverged
