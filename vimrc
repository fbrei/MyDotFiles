call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter'

    Plug 'yuttie/comfortable-motion.vim'

    Plug 'noah/vim256-color'

    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'

    Plug 'tpope/vim-fugitive'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sjl/gundo.vim'
    Plug 'YorickPeterse/happy_hacking.vim'
    Plug 'xolox/vim-colorscheme-switcher'
    Plug 'xolox/vim-misc'
call plug#end()

set hidden
set nowrap

filetype plugin on
set nocompatible
set lazyredraw
set scrolloff=5

syntax on
set background=dark

set number
set ruler
set wildmenu
set showmatch
set showcmd

let mapleader=","

set tabstop=4
set expandtab
set shiftwidth=4

set cursorline
hi CursorLine   cterm=underline ctermbg=none

filetype indent off
set smartindent

set splitbelow
set splitright

set incsearch
set ignorecase
set hlsearch
nnoremap <silent> <leader><space> :nohlsearch<CR>

set undofile
set history=10000

set wildignore=*.class

nnoremap <silent> <leader>s :vsplit<CR>
nnoremap <silent> <leader>S :split<CR>

inoremap { {<CR>}<ESC>ko<TAB>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i

autocmd filetype tex inoremap { {}<ESC>i
autocmd filetype tex inoremap $ $$<ESC>i

nnoremap <silent><F2> :NERDTreeToggle<CR>
nnoremap <silent><F3> :GundoToggle<CR>

nnoremap <silent> <C-S> :wa<CR>:mksession!<CR>:echo "Session saved"<CR>
nnoremap <silent> <C-Q> :qa<CR>
nnoremap <silent> <C-L> :source Session.vim<CR>
set ssop-=options

colorscheme distinguished
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr  ctermfg=white cterm=bold
hi Special ctermbg=none
hi Comment ctermfg=lightblue ctermbg=none
hi OverLength ctermbg=black
hi ColorColumn ctermbg=darkgrey
hi CursorLine cterm=underline ctermbg=none ctermfg=none
hi Visual cterm=reverse
hi CursorLineNr ctermbg=235

nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>

let g:comfortable_motion_interval = 1000.0 / 60
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0

set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='base16_default'

let NERDTreeQuitOnOpen=1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:gundo_prefer_python3 = 1
