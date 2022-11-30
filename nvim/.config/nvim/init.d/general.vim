" This file contains configuration for the neovim

" vim-plug automatically does:
"syntax on
"filetype plugin indent on

" Enabled so I can see carriage returns (and other chars)
set binary

" Disable thin cursor in insert mode
set guicursor=

" tab preferences
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

" Ctrl+Backspace = Delete previous word
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" Write to file as root
command Sw :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Compile and upload Arduino sketches
"autocmd FileType ino          nnoremap <buffer> <C-L> :! arduino --compile %
"autocmd FileType ino          nnoremap <buffer> <C-J> :! arduino --upload %

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>
