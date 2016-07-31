##
# Symlink setup file. Based on https://github.com/toranb/dotfiles
##

# Delete any existing files
rm -rf ~/.tmux.conf > /dev/null 2>&1
rm -rf ~/.vim > /dev/null 2>&1
rm -rf ~/.vimrc > /dev/null 2>&1
rm -rf ~/.gitconfig > /dev/null 2>&1
rm -rf ~/.gitignore > /dev/null 2>&1
rm -rf ~/.bash_profile > /dev/null 2>&1

# Symlink the new config files. Assumes files are saved in ~/dotfiles
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/bash_profile ~/.bash_profile

##
# Homebrew
##

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install hub

echo "Installing apps..."

brew cask install atom
brew cask install ember
brew cask install sketch
brew cask install google-chrome

##
# Load atom config here
##

# ln -s -f ~/dotfiles/atom/config.cson ~/.atom/config.cson

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
