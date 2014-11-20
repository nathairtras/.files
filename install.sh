DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FLDR="$(basename $DIR)"

#nano
ln -s -f #DIR/dotfiles/tmux.conf $HOME/.tmux.conf

#tmux
ln -s -f $DIR/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s -f $DIR/tmux $HOME/.tmux

#Add the environment settings
echo "Please add the following to your profile script:"
echo ""
echo "for i in \${HOME}/${FLDR}/env/*; do"
echo '    if [ -r "$i" ]; then '
echo '        source $i        '
echo '    fi                   '
echo 'done                     '
