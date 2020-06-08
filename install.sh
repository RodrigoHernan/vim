sudo apt-get remove vim-tiny
#pre requisites
sudo apt-get install libncurses5-dev libncursesw5-dev

# Create the directories you need
sudo mkdir -p /opt/local/bin
# Download, compile, and install the latest Vim
cd ~
git clone https://github.com/vim/vim.git && cd vim
./configure --prefix=/opt/local --enable-python3interp=yes
sudo make
sudo make install

# install plugin for install plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc
curl https://raw.githubusercontent.com/RodrigoHernan/vim/master/vimrc.vim --output ~/.vimrc


# install plugin autocompleteMe
sudo apt install build-essential cmake python3-dev
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 install.py --cs-completer --ts-completer

vim +PluginInstall +qall
