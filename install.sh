sudo apt-get remove vim-tiny

# Create the directories you need
sudo mkdir -p /opt/local/bin
# Download, compile, and install the latest Vim
cd ~
git clone https://github.com/vim/vim.git && cd vim
./configure --prefix=/opt/local --enable-python3interp=yes
make
sudo make install

# install plugin for install plugins 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy vimrc
curl https://raw.githubusercontent.com/RodrigoHernan/vim/master/vimrc.vim --output ~/.vimrc


# install plugin autocompleteMe
sudo apt install build-essential cmake python3-dev
git clone https://github.com/Valloric/YouCompleteMe.git --output ~/.vim/bundle/
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 install.py --all

vim +PluginInstall +qall
