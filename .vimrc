"automatic reloading of .vimrc
  autocmd! BufWritePost .vimrc so % | AirlineRefresh

" colorscheme
  set background=dark
  let base16colorspace=256
  syntax enable
  set t_Co=256
  colorscheme base16-railscasts

" general
  let mapleader = "\<Space>"
  set nowrap
  set timeoutlen=500 ttimeoutlen=0
  set history=1000
  set undolevels=1000
  set number
  set relativenumber
  set cursorline
  set showcmd
  set lazyredraw
  set ttyfast
  set mouse=
  set scrolloff=5
  filetype plugin indent on
  nnoremap <Enter> G
  inoremap <Esc> <nop>
  inoremap kj <Esc>
  nnoremap <leader>w :w<CR>
  nnoremap <leader>q :q<CR>

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
  set expandtab
  set shiftround
  set smartindent

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

" buffer navigation
  set hidden
  nnoremap <Leader>; :bnext<CR>
  nnoremap <Leader>j :bprevious<CR>
  nnoremap <Leader>q :bd <Bar> bprevious<CR>
  nnoremap <Leader>t :enew<CR>

" source plugins.vim
  source $HOME/.vim/plugins.vim
