set mouse=
set tabstop=2
set et
set nowrap

syntax on
colorscheme afterglow


call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'

call plug#end()

"-------------startify------------
let g:startify_custom_header = 
                        \ map(split(system('fortune ~/.vim/fortunes | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']
let g:startify_change_to_vcs_root = 1

let g:startify_lists = [
  \ { 'type': 'files',     'header': [   'MRU']},
  \ { 'type': 'sessions',  'header': [   'Sessions']},
  \ { 'type': 'bookmarks', 'header': [   'Bookmarks']},
  \ { 'type': 'commands',  'header': [   'Commands']},
\]

"---------------------------------

"-------------nerdtree------------
map <C-n> :NERDTreeToggle<CR>

"---------------------------------


