""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim-Plug for plugin management
""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'zxqfl/tabnine-vim'

" Add Syntastic plugin here "
Plug 'scrooloose/syntastic'

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" rainbow
Plug 'frazrepo/vim-rainbow'

" solarized
Plug 'altercation/vim-colors-solarized'

" gitgutter
Plug 'airblade/vim-gitgutter'

" lightline
Plug 'itchyny/lightline.vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""
" leader is comma
let mapleader=","       

" turn off search highlight with ,-<space>
" nnoremap <leader><space> :nohlsearch<CR>


""""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""""""""""
" Remap the ESC Key
inoremap jk <ESC>

" Automatically update a file if it is changed externally
set autoread

" search is case-insensitive by default
set ignorecase

" Show linenumbers
set number

" show last command in the bottom right
set showcmd

" always show current position
set ruler

" Line wrap (number of cols)
set wrap	    " wrap lines only visually
set linebreak	    " wrap only at valid characters
set textwidth=0	    " prevent vim from inserting linebreaks
set wrapmargin=0    "   in newly entered text

"show search results as you type
set incsearch

" Show matching braces
set showmatch

" disable the swapfile
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""
" File Types
"""""""""""""""""""""""""""""""""""""""""""""""""
" recognize .md files as markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" enable spell-checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" set filetypes for nasm/asm
autocmd BufNewFile,BufRead *.nasm set filetype=nasm
autocmd BufNewFile,BufRead *.asm set filetype=nasm


"""""""""""""""""""""""""""""""""""""""""""""""""
" Text and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use smart tabs
set smarttab

set expandtab " use spaces, no tabs

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4

set ai " Auto indent
set si " Smart indent

" modern backspace behavior
set backspace=indent,eol,start

filetype indent on	" enable filetype specific indentation


"""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""
" show hidden files
let NERDTreeShowHidden=1

" open/close NERDTree using Leader-f (,-f)
nnoremap <Leader>f :NERDTreeToggle<Enter>


"""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_show_diagnostics_ui = 0
let g:syntastic_c_checkers=['cppcheck','gcc']
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_nasm_checkers = ['nasm']


"""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""
set t_TE= t_TI=


"""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""
" loading for specific file types
" au FileType c,cpp,objc,objcpp call rainbow#load()

" enable it globally
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark "light
let g:solarized_termcolors=256
colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""
" Git Gutter
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_highlight_lines = 1


"""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2
" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
            \ }

set laststatus=2
