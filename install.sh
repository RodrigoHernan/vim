sudo apt-get remove vim-tiny
#pre requisites
sudo apt-get install libncurses5-dev libncursesw5-dev -y
sudo apt-get install openbox -y
# hay que revisar porque estas librerias hay algunas deprecadas
sudo apt-get install libncurses5-dev  libgtk2.0-dev libatk1.0-dev   libcairo2-dev libx11-dev libxpm-dev libxt-dev


# Create the directories you need
sudo mkdir -p /opt/local/bin
# Download, compile, and install the latest Vim
cd ~
git clone https://github.com/vim/vim.git && cd vim
./configure --prefix=/opt/local --enable-python3interp=yes --enable-terminal  --with-features=huge --with-x=yes 
sudo make
sudo make install

# Add the binary to your path, ahead of /usr/bin
echo 'PATH=/opt/local/bin:$PATH' >> ~/.bash_profile
echo 'PATH=/opt/local/bin:$PATH' >> ~/.bashrc
echo 'PATH=/opt/local/bin:$PATH' >> ~/.zshrc
# Reload bash_profile so the changes take effect in this window
source ~/.bash_profile

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
