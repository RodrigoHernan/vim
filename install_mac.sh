#### install vim 
# Create the directories you need
sudo mkdir -p /opt/local/bin
# Download, compile, and install the latest Vim
cd ~
hg clone https://bitbucket.org/vim-mirror/vim or git clone https://github.com/vim/vim.git

cd vim
./configure --prefix=/opt/local --enable-python3interp=yes
make
sudo make install
# Add the binary to your path, ahead of /usr/bin
echo 'PATH=/opt/local/bin:$PATH' >> ~/.bash_profile
# Reload bash_profile so the changes take effect in this window
source ~/.bash_profile

# install plugin for install plugins 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# copy vimrc
curl https://raw.githubusercontent.com/RodrigoHernan/vim/master/vimrc.vim --output ~/.vimrc
# install plugin autocompleteMe
brew install cmake
# # add this vars to path
# echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.bash_profile
# echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 install.py --all

vim +PluginInstall +qall