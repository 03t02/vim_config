" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'

Plug 'Yggdroot/indentLine'

call plug#end()

syntax on

map <C-P> :FZF<CR>
nnoremap <C-P> :GFiles<CR>

map <TAB> :bnext<CR>
map <S-TAB> :bprevious<CR>
map <C-X> :NERDTreeToggle<CR>

let g:airline#extensions#tabline#enabled = 1

set hlsearch
set incsearch

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

set number

let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
