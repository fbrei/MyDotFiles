call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter'

    Plug 'majutsushi/tagbar'

    Plug 'yuttie/comfortable-motion.vim'

    Plug 'tomasr/molokai'
    Plug 'bounceme/base.vim'
    Plug 'sjl/badwolf'

    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'

    Plug 'tpope/vim-fugitive'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sjl/gundo.vim'
call plug#end()


filetype plugin on
set nocompatible
set lazyredraw
set scrolloff=5
set t_Co=256

filetype plugin on

syntax on
colorscheme base
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
hi CursorLine   cterm=NONE ctermbg=black

set autoindent

set splitbelow
set splitright

set incsearch
set ignorecase
set hlsearch
nnoremap <silent> <leader><space> :nohlsearch<CR>


set ssop-=options

set undofile
set history=10000


""set listchars=tab:▸\ ,eol:¬

set wildignore=*.class

nnoremap <silent> <leader>s :vsplit<CR>
nnoremap <silent> <leader>S :split<CR>

" inoremap { {<CR>}<ESC>ko<TAB>
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i
inoremap qq <ESC>

nnoremap <silent><F2> :buffers<CR>:buffer<SPACE>
nnoremap <silent><F3> :NERDTreeToggle<CR>
" nnoremap <silent><F4> :TlistToggle<CR>
nnoremap <F4> :TagbarToggle<CR>

nnoremap <silent> <leader>u :GundoToggle<CR>
nnoremap <silent> <C-S> :wa<CR>:mksession!<CR>:echo "Session saved"<CR>
nnoremap <silent> <C-Q> :qa<CR>
nnoremap <silent> <C-L> :source Session.vim<CR>

let NERDTreeQuitOnOpen=1

hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none
hi Special ctermbg=none

nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>

"" Switch tabs with Alt + Number
""execute "set <M-1>=\e1"
""nnoremap <M-1> 1gt
""
""execute "set <M-2>=\e2"
""nnoremap <M-2> 2gt
""
""execute "set <M-3>=\e3"
""nnoremap <M-3> 3gt
""
""execute "set <M-4>=\e4"
""nnoremap <M-4> 4gt
""
""execute "set <M-5>=\e5"
""nnoremap <M-5> 5gt
""
""execute "set <M-6>=\e6"
""nnoremap <M-6> 6gt
""
""execute "set <M-7>=\e7"
""nnoremap <M-7> 7gt
""
""execute "set <M-8>=\e8"
""nnoremap <M-8> 8gt
""
""execute "set <M-9>=\e9"
""nnoremap <M-9> 9gt

let g:comfortable_motion_interval = 250.0 / 60
let g:comfortable_motion_friction = 100.0
let g:comfortable_motion_air_drag = 3.0

" let Tlist_Use_Right_Window = 1
" let Tlist_GainFocus_On_ToggleOpen = 1
" let Tlist_Close_On_Select = 1
" let Tlist_WinWidth = 50

hi Visual term=reverse cterm=reverse guibg=Grey
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='base16_default'

nnoremap <silent> <Leader>p  :bnext<CR>
nnoremap <silent> <Leader>P  :bprevious<CR>


let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:gundo_prefer_python3 = 1
