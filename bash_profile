PS1="\n\[$(tput setaf 9)⚡️  \]\w\[$(tput setaf 7)\]\n\n› "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use 8.9.1

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source ~/perl5/perlbrew/etc/bashrc

alias cat='bat';
