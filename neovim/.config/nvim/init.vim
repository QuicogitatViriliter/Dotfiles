call plug#begin()
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
"    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

source $HOME/.config/nvim/coc.vim

colorscheme wombat256grf

autocmd InsertEnter * norm zz

let mapleader = " "
set clipboard=unnamedplus
set termguicolors
set number relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set hidden
set nowrap
set incsearch
set scrolloff=16
set noshowmode
set cmdheight=1
set updatetime=50
set cursorline cursorcolumn
set splitbelow splitright
set wildmenu
set wildmode=longest:full,full

nnoremap <leader>sc  :set cursorline! cursorcolumn!<CR>
nnoremap <leader>gr :%s//g<Left><Left>
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <leader>h  :wincmd h<CR>
nnoremap <leader>j  :wincmd j<CR>
nnoremap <leader>k  :wincmd k<CR>
nnoremap <leader>l  :wincmd l<CR>
nnoremap <leader>cc :!gcc % && ./a.out<CR>
nnoremap <leader>av a@author Santos Shiden Nicholas<CR>@version 0.1 <Esc>:r !date +"\%Y-\%m-\%d"<CR>i<BS><Esc>o

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup whiteSpaceRemoval
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
