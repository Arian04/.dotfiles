This is a repository for storing and version-controlling my dotfiles

## Usage
#### Prerequisites
- Install [GNU stow](https://www.gnu.org/software/stow/)
- Install git
- Install the package(s) that you're planning on using these config files for

#### Installation
1. `$ git clone https://github.com/Arian04/.dotfiles.git`
2. `$ cd .dotfiles`
3. `$ stow --target=/home/$USER program_name # program_name can be the name of any top-level directory in this repo`

#### Post-Installation Steps
- nvim
	1. `Install [vim-plug](https://github.com/junegunn/vim-plug#neovim) for neovim`
	2. `$ nvim # Open neovim`
	3. `Run :PlugUpdate to install and update vim-plug plugins`
	4. `Run :CocUpdate to install and update coc.nvim plugins`