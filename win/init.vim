set nu
set relativenumber
set exrc
set nohlsearch
set smartindent
set noerrorbells
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set ignorecase
set scrolloff=8
set incsearch
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set ignorecase
set scrolloff=8
set incsearch

call plug#begin('C:\Users\fabio\AppData\Local\nvim\plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tmsvg/pear-tree'
Plug 'junegunn/seoul256.vim'
" Plug 'preservim/nerdtree'
call plug#end()


" colorscheme gruvbox
let g:seoul256_background = 233 
colo seoul256
set background=dark



let g:pear_tree_repeatable_expand=0

map <C-a> <esc>ggVG<CR>
map! <C-a> <esc>ggVG<CR>

nnoremap <F1> :term <CR>i 

" Moving between vertical split with ctrl h / l
map <C-h> <C-w>h
map <C-l> <C-w>l

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif




if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif
