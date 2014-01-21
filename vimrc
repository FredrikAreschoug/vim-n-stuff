"paste issue
set paste

"Pathogen
filetype plugin on
call pathogen#helptags()
syntax on

call pathogen#infect()
"Leader
let mapleader=","

"NERDTree
map <leader>n :NERDTreeToggle<CR>

"Solarized
syntax enable
"let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

"Show trailing whitespace:
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"tabspace
"set softtabstop=4
:set tabstop=4
:set shiftwidth=4
:set expandtab
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

"linenumber
:set number
set colorcolumn=80 " line after 79 chars, why no work? 

"vim-move
let g:move_key_modifier = 'C'
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

vnoremap < <gv
vnoremap > >gv
