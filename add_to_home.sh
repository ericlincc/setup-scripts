# First argument should be the home directory
HOME=$1

if [ -z "$HOME" ]
then
	echo "Mising argument(s). Read comments in script!"
	exit 1
fi


##### Helper functions #####


timestamp() {
  date +"%Y-%m-%d_%H-%M-%S" # current datetime
}


##### Main #####


set -e


# bashrc
if [ "$SHELL" = "/bin/bash" ]
then
	echo "Appending to .bashrc"
	touch $HOME/.bashrc
	cat run_commands/.bashrc >> $HOME/.bashrc
fi

# zshrc
if [ "$SHELL" = "/bin/zsh" ]
then
	echo "Appending to .zshrc"
	touch $HOME/.zshrc
	cat run_commands/.zshrc >> $HOME/.zshrc
fi

# tmux
echo "Adding .tmux.conf"
cat run_commands/.tmux.conf > $HOME/.tmux.conf

# vim
echo "Adding .vimrc"
cat run_commands/.vimrc > $HOME/.vimrc

