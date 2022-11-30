This is a repository for storing and version-controlling my dotfiles

## Usage
#### Prerequisites
- Install [GNU stow](https://www.gnu.org/software/stow/)

#### Installation
1. `$ git clone https://github.com/Arian04/.dotfiles.git`
2. `$ cd .dotfiles`
3. `$ stow program_name # program_name can the name of any top-level directory in this repo`

#### Post-Installation Steps
- nvim
	1. `$ nvim # Open neovim`
	2. `Run :PlugInstall to install vim-plug plugins`
	3. `Run :CocUpdate to install and update coc.nvim plugins`