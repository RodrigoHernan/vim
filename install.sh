sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim

# install plugin for install plugins 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc.vim ~/.vimrc

# install plugin autocompleteMe
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 install.py --all

vim +PluginInstall +qall