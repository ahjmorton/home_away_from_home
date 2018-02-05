CURRENT_DIR="$(dirname ${BASH_SOURCE[0]})"

source $CURRENT_DIR/docker_standins.sh

alias vim="vim -u $CURRENT_DIR/vimrc"
alias screen="screen -c $CURRENT_DIR/vimrc"
