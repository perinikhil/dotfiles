" vim-plug
  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'benekastah/neomake'
  Plug 'Valloric/YouCompleteMe'
  Plug 'mattn/emmet-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'Raimondi/delimitMate'
  Plug 'othree/html5.vim', {'for': ['html']}
  Plug 'othree/yajs.vim', {'for': ['javascript.jsx']}
  Plug 'gavocanov/vim-js-indent', {'for': ['javascript.jsx']}
  Plug 'mxw/vim-jsx', {'for': ['javascript.jsx']}

  call plug#end()

  "--nerdtree
    nnoremap <C-n> :NERDTreeToggle<Enter>
    let NERDTreeQuitOnOpen = 1
    let NERDTreeAutoDeleteBuffer = 1
    let NERDTreeMinimalUI = 1

  "--ctrlp
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules|build)$',
      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
    \}

  "--airline
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = ' '
    let g:airline_right_sep = ' '
    let g:airlin_right_alt_sep = ' '
    let g:airline_left_sep = ' '
    let g:airlin_left_alt_sep = ' '
    let g:airline_theme = 'oceanicnext'
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
      \ 'errorformat': '%f:%l:%c: %m',
    \ }
    let g:neomake_javascript_enabled_makers = ['semistandard']
    let g:neomake_jsx_semistandard_maker = {
      \ 'errorformat': '%f:%l:%c: %m',
    \ }
    let g:neomake_jsx_enabled_makers = ['semistandard']

  "--YouCompleteMe
    let g:python_host_prog = '/usr/bin/python'
    let g:ycm_add_preview_to_completeopt = 1
    " let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    augroup PreviewOnBottom
      autocmd InsertEnter * set splitbelow
      autocmd InsertLeave * set splitbelow!
    augroup END

  "--better-whitespace
    autocmd BufWritePre * StripWhitespace

  "--multiple-cursor
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_next_key='<C-d>'
    let g:multi_cursor_prev_key='<C-x>'
    "let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'

  "--vim-smooth-scroll
    noremap <silent> <C-l> :call smooth_scroll#up(10, 15, 1)<CR>
    noremap <silent> <C-k> :call smooth_scroll#down(10, 15, 1)<CR>

  "--delimitMate
    let delimitMate_expand_cr = 1
    let delimitMate_expand_space = 1

  "--vim-jsx
    let g:jsx_ext_required = 0
