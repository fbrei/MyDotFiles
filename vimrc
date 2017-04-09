call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'taglist.vim', { 'on': 'TlistToggle' }
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'tomasr/molokai'

	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'honza/vim-snippets'

    Plug 'tpope/vim-fugitive'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'yggdroot/indentline'
call plug#end()


set nocompatible
set lazyredraw
set scrolloff=5
set t_Co=256

filetype plugin on

syntax on
colorscheme molokai
set background=dark

set number
set ruler

set tabstop=4
set expandtab
set shiftwidth=4

set autoindent

set splitbelow
set splitright

set incsearch
set ignorecase
set hlsearch
nnoremap <silent> <F5> :nohlsearch<CR>


set ssop-=options

set undofile
set history=10000


""set listchars=tab:▸\ ,eol:¬

set wildignore=*.class

nnoremap <silent> s :vsplit<CR>
nnoremap <silent> S :split<CR>

"inoremap { {<CR>}<ESC>ko<TAB>
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i

nnoremap <silent><F2> :buffers<CR>:buffer<SPACE>
nnoremap <silent><F3> :NERDTreeToggle<CR>
nnoremap <silent><F4> :TlistToggle<CR>

nnoremap <silent> <C-S> :wa<CR>:mksession!<CR>:echo "Session saved"<CR>
nnoremap <silent> <C-Q> :qa<CR>
nnoremap <silent> <C-L> :source Session.vim<CR>

let NERDTreeQuitOnOpen=1

hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none
hi Special ctermbg=none

nnoremap <C-Left> gT
nnoremap <C-Right> gt

"" Switch tabs with Alt + Number
execute "set <M-1>=\e1"
nnoremap <M-1> 1gt

execute "set <M-2>=\e2"
nnoremap <M-2> 2gt

execute "set <M-3>=\e3"
nnoremap <M-3> 3gt

execute "set <M-4>=\e4"
nnoremap <M-4> 4gt

execute "set <M-5>=\e5"
nnoremap <M-5> 5gt

execute "set <M-6>=\e6"
nnoremap <M-6> 6gt

execute "set <M-7>=\e7"
nnoremap <M-7> 7gt

execute "set <M-8>=\e8"
nnoremap <M-8> 8gt

execute "set <M-9>=\e9"
nnoremap <M-9> 9gt

let g:comfortable_motion_interval = 200.0 / 60

let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

hi Visual term=reverse cterm=reverse guibg=Grey
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_default'
