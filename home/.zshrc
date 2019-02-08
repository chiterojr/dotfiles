# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/bruno/.zshrc'

autoload -Uz compinit colors promptinit
compinit
colors
promptinit
# End of lines added by compinstall

# Start X Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi

# Aliases
if [ -e ~/.zshrc.aliases ] ; then
   source ~/.zshrc.aliases
fi

# Plugins
if [ -e ~/.cache/zsh/.zshrc.plugins ]; then
    source ~/.cache/zsh/.zshrc.plugins
else
    mkdir -p ~/.cache/zsh
    antibody bundle < ~/.zshrc.plugins > ~/.cache/zsh/.zshrc.plugins
    source ~/.cache/zsh/.zshrc.plugins
fi

[ -f ~/.localrc ] && . ~/.localrc
