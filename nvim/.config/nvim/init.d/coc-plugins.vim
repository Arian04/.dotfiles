" This file contains configuration for the installing coc.nvim plugins (and
" whatever other configuration is needed to get them working)

" Coc.nvim plugins
let g:coc_global_extensions = [
			\ 'coc-pairs',
			\ 'coc-prettier',
			\ 'coc-diagnostic',
			\ 'coc-json',
			\ 'coc-pyright',
			\ 'coc-java',
			\ 'coc-clangd'
			\ ]

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
