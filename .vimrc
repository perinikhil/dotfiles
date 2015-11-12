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
  set showcmd
  set mouse=
  filetype plugin indent on
  inoremap <Esc> <nop>
  inoremap kj <Esc>
  nnoremap <leader>s :w<CR>

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

"buffer navigation
  set hidden
  nnoremap <Leader>f :bnext<CR>
  nnoremap <Leader>a :bprevious<CR>
  nnoremap <Leader>w :bd <Bar> bprevious<CR>

"vim-plug
  call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'othree/yajs.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
"Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'ntpeters/vim-better-whitespace'

Plug 'terryma/vim-multiple-cursors'

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
  let g:airline#extensions#tabline#tab_nr_type = 1
  set laststatus=2
"--syntastic
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_loc_list_height = 5
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_javascript_checkers = ['standard']
  let g:syntastic_javascript_standard_exec = 'semistandard'
  let g:syntastic_javascript_standard_generic = 1
"--better-whitespace
  autocmd BufWritePre * StripWhitespace
"--multiple-cursor
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_next_key='<C-d>'
  let g:multi_cursor_prev_key='<C-x>'
  "let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'


