call plug#begin('~/.vim/plugged')
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()
set incsearch
let g:flake8_cmd="/home/tlocke/home/venv/bin/flake8"
autocmd BufWritePost *.py call flake8#Flake8()
autocmd BufWritePre *.py execute ':Black'
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType asciidoc setlocal ts=2 sts=2 sw=2 expandtab
