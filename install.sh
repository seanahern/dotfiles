##
# Symlink setup file. Based on https://github.com/toranb/dotfiles
##

# Delete any existing files
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1

# Symlink the new config files. Assumes files are saved in ~/dotfiles
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# Setup bash prompt:
echo 'PS1="\h:\u [ \[$(tput setaf 2)\]\w\[$(tput setaf 7)\] ]\[$(tput sgr0)\] 🍕  "' >> ~/.bash_profile

# To double-check symlink, use: ls -lad [filename]

echo -n "Would you like to configure your git name and email? (y/n) => "; read answer
if [[ $answer = "Y" ]] || [[ $answer = "y" ]]; then
    echo -n "What is your git user name => "; read name
    git config --global user.name "$name"
    echo -n "What is your git email => "; read email
    git config --global user.email "$email"
fi


echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
