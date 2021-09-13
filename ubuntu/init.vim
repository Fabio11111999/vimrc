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
set syntax
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set ignorecase
set scrolloff=8
set incsearch

call plug#begin('/home/fabiomarchesi/.config/nvim/plugged')
Plug 'nvim-telescope/telescope.nvim'
" Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'tmsvg/pear-tree'
Plug 'itchyny/lightline.vim'
call plug#end()

" clorscheme gruvbox
let g:seoul256_background = 233
colo seoul256

let g:pear_tree_repeatable_expand=0
map <C-a> <esc>ggVG<CR>
map! <C-a> <esc>ggVG<CR>

:let $CXX      = 'g++'
:let $CXXFLAGS = '-std=c++17 -O2 -Wall -Wextra' " -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG'
nnoremap <F1> :term <CR>i 
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
autocmd FileType cpp nnoremap <F9> :w <CR> :make %<<CR>
autocmd FileType cpp inoremap <F9> <ESC> :w <CR> :make %<<CR>
autocmd FileType cpp nnoremap <F10> :sp <CR> :term ./%<<CR>i

autocmd BufNewFile *.cpp 0r /home/fabiomarchesi/cp/template.cpp

" Ctrl-h / Ctrl-l to move between vertical splits
map <C-h> <C-w>h
map <C-l> <C-w>l

" Ctrl-k or Ctrl-j to move lines or blocks of line up or down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
        augroup WSLYank
                    autocmd!
                            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                                augroup END
                            endif
 
        au BufNewFile,BufRead *.tex
            \ set nocursorline |
            \ set nornu |
            \ set number |
            \ let g:loaded_matchparen=1 |l
