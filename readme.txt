# preffered to symlink the below files to the path following the ':'

.vimrc : ~/.vimrc
.vimrc : ~/.config/nvim/init.vim
vim/plugins.vim : ~/.vim/plugins.vim
.zshrc : ~/.zshrc  (requires ohmyzsh)
i3  : ~/.config/i3/config
i3blocks : ~/.config/i3/i3blocks.conf
i3blocks-scripts : ~/scripts
airline-theme : ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/oceanicnext.vim

# steps to follow if fresh install of OS

-> update and upgrade
-> install git and curl
-> install zsh and then oh my zsh
-> get base16-shell(chriskempson) colors and source your fav theme
-> install neovim
-> symlink the dotfiles
-> install base16-vim colors in ~/.config/nvim/colors
-> insall vim-plug and YouCompleteMe
