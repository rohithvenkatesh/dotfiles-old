#  ==================== EDIT THIS FILE FOR ALL ZSH CUSTOMIZATION ====================== #

# first line basically adds antibody and second one bundles the plugins
# to actually add plugins for zsh, go into ~/.dotfiles/.zsh/.plugins.txt and add github
source <(antibody init)
antibody bundle < ~/.dotfiles/zsh/plugins.txt
unsetopt beep
bindkey -e

# calls 'ls' when we call 'cd'
chpwd() {
	ls -G
}

# aliases
alias ls='ls -G'
alias matlab='/Users/rohithvenkatesh/Applications/MATLAB_R2017b.app/bin/matlab -nodesktop'

# for colors!
export TERM=xterm-256color

# binds ESC-A to calling and opening tmux
function open_tmux() {
	BUFFER="tmux"
	zle accept-line
}
zle -N open_tmux
bindkey "^[a" open_tmux

# opam configuration
test -r /Users/rohithvenkatesh/.opam/opam-init/init.zsh && . /Users/rohithvenkatesh/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export NODE_PATH='/usr/local/lib/node_module'
export PATH="$PATH:$HOME/.rvm/bin"

