#  ==================== EDIT THIS FILE FOR ALL ZSH CUSTOMIZATION ====================== #

# first line basically adds antibody and second one bundles the plugins
# to actually add plugins for zsh, go into ~/.dotfiles/.zsh/.plugins.txt and add github
source <(antibody init)
antibody bundle < ~/.dotfiles/.zsh/plugins.txt
unsetopt beep
bindkey -v

# calls 'ls' when we call 'cd'
chpwd() {
	ls -G
}

# calls 'ls -G' instead of 'ls'
alias ls='ls -G'

