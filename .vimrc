filetype on
filetype plugin on
filetype indent on

let mapleader = " "

" Always highlight everything
syn on

" Settings for indentation
set tabstop=4 shiftwidth=4 

set hidden

set ruler showmode

" Searching
set incsearch showcmd ignorecase smartcase

" Completion
set wildmenu
set wildmode=list:longest

set viminfo='1000,f1,<500,

" Spell checking
"set spell    

" Use window titlebar
set title

set ofu=syntaxcomplete#Complete

" Zenburn scheme, but high contrast
" let g:zenburn_high_Contrast = 1
" colorscheme zenburn

" Allow windows to be squished down and cycled like a stack
set winminheight=0
map <C-J> <C-W>w<C-W>_

" Switching buffers
nmap <tab> :bn<cr>
nmap <s-tab> :bp<cr>

" Show Trailing whitespace
" set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" FuzzyFinder
map <Leader>t :FufFile<CR>

" NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" buftabs
set laststatus=2
:let g:buftabs_in_statusline=1
:let g:buftabs_active_highlight_group="Visual"

set ts=4 sts=4 sw=4 et

" File type specific 
au FileType make set noexpandtab
au FileType python,pyrex setl ts=4 sw=4 sts=4 et ai
