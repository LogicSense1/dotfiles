# dotfiles for macOS

首先安装HomeBrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Brew安装需要的软件
```
brew install bat neovim dust exa fd htop ncdu node ffmpeg duf tealdeer
```
安装rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
下载并安装miniforge https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh

安装starship
```
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```
安装zinit
```
sh -c "$(curl -fsSL https://git.io/zinit-install)"
```

拷贝配置文件
```
git clone https://github.com/VinKK1998/dotfiles.git
cd dotfiles
mv ~/.zshrc ~/.zshrc.bak
mv .zshrc ~/.zshrc
mv .config ~
```
