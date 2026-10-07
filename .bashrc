# Load aliases
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

# Colors and order of things in terminal query line
PS1='\[\e[96m\]\h\[\e[0m\]:\w \u\$ '

# Autocomplete git branches
if [[ -r "$(xcode-select -p)/usr/share/git-core/git-completion.bash" ]]; then
    source "$(xcode-select -p)/usr/share/git-core/git-completion.bash"
fi

# Load dev keys and settings
if [[ -f ~/.bash_dev ]]; then
    source ~/.bash_dev
fi
