filetype on
filetype plugin indent on
filetype plugin on
syntax on

"execute pathogen#infect()
"let g:airline_theme='bubblegum'
"let g:airline_powerline_fonts=1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

set laststatus=2
set noshowmode

set showcmd
set ignorecase
set smartcase
set expandtab
set smarttab
"set hlsearch
set number
set noswapfile
set cursorline
set autoindent

set shiftwidth=4
set softtabstop=4
set scrolloff=8
set sidescrolloff=10

set timeoutlen=1000
set ttimeoutlen=0

" for cross-terminal clipboard support
set clipboard=unnamed

:noremap / :set hlsearch<CR>/

" toggle paste mode
:noremap <F2> :set paste! nopaste?<CR>

" toggle number lines
:noremap <F3> :set nonumber! nonumber?<CR>

" toggle search highlights
:noremap <F4> :set hlsearch! hlsearch?<CR>

" NERDTree
:noremap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.o$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

colorscheme mango
set background=light

function TrimWhitespace()
  %s/\s*$//
  ''
:endfunction
command! Trim call TrimWhitespace()

" Shows the highlight group of whatever's under the cursor
 map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
 \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
