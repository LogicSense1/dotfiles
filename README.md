# dotfiles

```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/zsh.config ~/.zshrc
cp zsh/p10k.cinfig ~/.p10k.zsh
source ~/.zshrc
source ~/.p10k.zsh

cp vim/vimrc.config ~/.vimrc
mkdir -p ~/.vim/colors/
cp vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
./install.py --all
```
