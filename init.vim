set number

call plug#begin(stdpath('data') . '/plugged')

Plug 'liuchengxu/vim-better-default'

Plug 'easymotion/vim-easymotion'

Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/float-preview.nvim'

Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }

Plug 'w0rp/ale'

Plug 'Olical/conjure'

Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'

Plug 'radenling/vim-dispatch-neovim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Vim HardTime
""Plug 'takac/vim-hardtime'

" Color schemas
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-tree/nvim-tree.lua'

Plug 'eraserhd/parinfer-rust'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

call plug#end()


let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}

"Map leader
let mapleader = " "
"Open dir
map <leader>pv :Ex<CR>
"Set up telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-k> :tabnext<CR>

"Turn off arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

colorscheme catppuccin-mocha

