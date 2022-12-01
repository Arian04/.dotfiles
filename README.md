This is a repository for storing and version-controlling my dotfiles

## Usage
#### Prerequisites
- Install [GNU stow](https://www.gnu.org/software/stow/)

#### Installation
1. `$ cd ~ # All these paths are relative to the home directory and stow creates the symlinks relative to the parent directory from where it's run`
2. `$ git clone https://github.com/Arian04/.dotfiles.git`
3. `$ cd .dotfiles`
4. `$ stow program_name # program_name can the name of any top-level directory in this repo`

#### Post-Installation Steps
- nvim
	1. `$ nvim # Open neovim`
	2. `Run :PlugInstall to install vim-plug plugins`
	3. `Run :CocUpdate to install and update coc.nvim plugins`