" spaceleader always
nnoremap <SPACE> <Nop>
let mapleader = ' '

" Syntax highlighting always
syntax on

" Default tab/space settings
set tabstop=4 shiftwidth=4 expandtab

" Hybrid line numbering
set relativenumber
set number

"set colorcolumn=80,120

" Use memory
set hidden
set history=100

" Search
set hlsearch

" File type specific
filetype on
au FileType make set noexpandtab

" Arrow Keys
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" Land of plugins begins

" vim-plug automatic installation 
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall " --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'hecal3/vim-leader-guide'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'itchyny/lightline.vim'
" Colors
Plug 'chriskempson/base16-vim'
" The note spacevim.org spacevim plugin, gives us keybindings only
Plug 'ctjhoa/spacevim'

call plug#end()

set laststatus=2

" let base16colorspace=256
colorscheme base16-solarized-dark
hi Normal ctermbg=none
hi LineNr ctermbg=none
hi CursorLineNr ctermbg=none
