" This file contains configuration for the vim-plug, the plugin manager I use
" as well as configuration for the plugins installed by vim-plug

" vim-plug
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'} 				" Intellisense engine, smart completion
Plug 'sheerun/vim-polyglot'  														" Collection of vim language packs
Plug 'preservim/nerdcommenter' 													" Extra keybinds for commenting
Plug 'morhetz/gruvbox' 																	" Theme
Plug 'pearofducks/ansible-vim' 													" Ansible plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Preview markdown
"Plug 'artur-shaik/vim-javacomplete2' 										" Java plugin

" Initialize plugin system
call plug#end()

" Theming
set background=dark 										" Setting dark mode
colorscheme gruvbox

" ansible-vim adhoc directory syntax highlighting
au BufRead,BufNewFile */adhoc/*.yml set filetype=yaml.ansible
