" colorscheme
  set background=dark
  let base16colorspace=256
  syntax enable
  set t_Co=256
  colorscheme base16-oceanicnext

" general
  let mapleader = ","
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set relativenumber
  set cursorline
  set mouse=

" stay in vmode on indent
  vnoremap < <gv
  vnoremap > >gv

" disable swap files
  set nobackup
  set noswapfile

" code tab settings
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set shiftround
  set expandtab

" search settings
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch

" remap navigation and disable arrow keys
  noremap ; l
  noremap l k
  noremap k j
  noremap j h
  map <up> <nop>
  map <down> <nop>
  map <left> <nop>
  map <right> <nop>
