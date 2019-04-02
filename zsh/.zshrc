export BW_SESSION="/Qnea0Vime4NWgUz5NPZbUPlgd/SSKcO+6t24SPmKXYCneTkcTVT7YxiyZEWz9k2DdCgly0MEMiR96BkJV4WKA=="
#Using antigen as plugin manager
source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen theme robbyrussell
antigen apply
#End of antigen

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/reueljohn/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

#Aliases
alias vim="nvim"
alias v="nvim"
alias dc="nvim $HOME/.config/dwm/config.h"
alias zc="nvim ~/.zshrc"
alias sc="nvim $HOME/.config/st/config.h"
alias pbc="nvim $HOME/.config/polybar/config"
#alias non="optimus-manager --no-confirm --switch nvidia && sudo /usr/bin/optimus-manager-setup --setup-start"
#alias noff="sudo /usr/bin/optimus-manager-setup --setup-stop && optimus-manager --no-confirm --switch intel"
#alias nstat="optimus-manager --print-mode"
alias nstat="cat /proc/acpi/bbswitch"
alias noff="sudo tee /proc/acpi/bbswitch <<<OFF"
alias non="sudo tee /proc/acpi/bbswitch <<<ON"
alias algos="cd ~/Ashoka\ University/SEMESTER\ 4/Algorithms"
alias os="cd ~/Ashoka\ University/SEMESTER\ 4/Operating\ Systems"
alias csp="cd ~/Ashoka\ University/SEMESTER\ 4/Computer\ Security\ and\ Privacy"
alias clera="clear"
alias clerw="clear"
alias c;ear="clear"
alias gcloud="ssh reuel_johnk_ug20@34.73.152.202"

function c(){
	objFile=$(echo $1 | sed "s/\.c//g");
	gcc -g -o $objFile $1;
}
