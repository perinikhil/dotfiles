"automatic reloading of .vimrc
  autocmd! BufWritePost .vimrc so % | AirlineRefresh

" colorscheme
  set background=dark
  let base16colorspace=256
  syntax enable
  set t_Co=256
  " colorscheme base16-oceanicnext
  colorscheme dracula

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
  set mouse=
  set scrolloff=5
  filetype plugin indent on
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
  nnoremap <Leader>f :bnext<CR>
  nnoremap <Leader>a :bprevious<CR>
  nnoremap <Leader>q :bd <Bar> bprevious<CR>
  nnoremap <Leader>t :enew<CR>

" vim-plug
  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-airline'
  Plug 'othree/yajs.vim'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  "Plug 'Valloric/YouCompleteMe'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Raimondi/delimitMate'
  Plug 'ervandew/supertab'
  Plug 'scrooloose/nerdcommenter'

  call plug#end()

  "--nerdtree
    nnoremap <C-n> :NERDTreeToggle<Enter>
    let NERDTreeQuitOnOpen = 1
    let NERDTreeAutoDeleteBuffer = 1
    let NERDTreeMinimalUI = 1
  "--ctrlp
    "nnoremap <C-p> :CtrlP<Enter>
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|build)$',
      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
    \}
  "--airline
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_theme = 'badwolf'
    set laststatus=2
  "--neomake
    let g:neomake_open_list = 2
    let g:neomake_list_height = 3
    autocmd! BufWritePost * Neomake
    let g:neomake_error_sign = {
      \ 'text': '✖>',
      \ 'texthl': 'SignifySignDelete',
    \ }
    let g:neomake_javascript_semistandard_maker = {
      \ 'errorformat': '  %f:%l:%c: %m',
    \}
    let g:neomake_javascript_enabled_makers = ['semistandard']
  "--better-whitespace
    autocmd BufWritePre * StripWhitespace
  "--multiple-cursor
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_next_key='<C-d>'
    let g:multi_cursor_prev_key='<C-x>'
    "let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
  "--delimitMate
    let delimitMate_expand_cr = 1
    let delimitMate_expand_space = 1
  "--nerdcommenter
    let NERDSpaceDelims=1
