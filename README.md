# dotfiles

```
cd ~
sudo dnf install zsh bat thefuck vim exa
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://github.com/zsh-users/antigen/releases/download/v2.2.3/antigen.zsh
cp zsh/zsh.config ~/.zshrc
cp zsh/p10k.config ~/.p10k.zsh
source ~/.zshrc
source ~/.p10k.zsh

cp vim/vimrc.config ~/.vimrc
mkdir -p ~/.vim/colors/
cp vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
cd ~/.vim/plugged/YouCompleteMe
sudo dnf install build-essential cmake vim-nox python3-dev
sudo dnf install mono-complete golang nodejs default-jdk npm
./install.py --all
```
