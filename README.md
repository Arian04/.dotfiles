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
	1. Install nodejs
	2. Install yarn
	3. Install [vim-plug](https://github.com/junegunn/vim-plug#neovim) for neovim
	4. `$ nvim # Open neovim`
	5. `Run :PlugUpdate to install and update vim-plug plugins`
	6. `Run :CocUpdate to install and update coc.nvim plugins`

- zsh
	1. Install [powerlevel10k](https://github.com/romkatv/powerlevel10k)
	2. Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
	3. Make sure the lines sourcing zsh-autosuggestions and powerlevel10k point to the right paths since that varies by method of installation