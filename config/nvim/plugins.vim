set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

" colorschemes
" Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'

" file drawer
Plug 'scrooloose/nerdtree' 
"Plug 'Xuyuanp/nerdtree-git-plugin' 
"Plug 'ryanoasis/vim-devicons'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" styles
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] } " markdown support
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support


call plug#end()
