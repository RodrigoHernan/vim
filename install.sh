sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim

# install plugin for install plugins 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc
curl https://raw.githubusercontent.com/RodrigoHernan/vim/master/vimrc.vim --output ~/.vimrc


# install plugin autocompleteMe
sudo apt install build-essential cmake python3-dev
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 install.py --all

vim +PluginInstall +qall