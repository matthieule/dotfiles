source ~/.config/nvim/plugins.vim

" python stuff: these path must be working for the Jedi vim plugin. They
" correspond to the python used when installing neovim with
" pip2 install neovim
" pip3 install neovim
" or conda install neovim in all the virtual environment
" let g:python_host_prog = '/usr/local/bin/python2.7'
" let g:python3_host_prog = '/usr/local/bin/python3'

let g:virtualenv_auto_activate = 1

let python_highlight_all=1
syntax on

" Section General {{{

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000
set textwidth=79

" }}}

" Section User Interface {{{

" color
let base16colorspace=256
set background=dark
colorscheme base16-tomorrow-night

"airline theme
let g:airline_theme='base16'
let g:solarized_base16 = 1

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

" set number                  " show line numbers
set ruler                   " show the file status at the bottom
set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
" set foldmethod=indent       " fold based on indent
" set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
" set foldlevel=1

" preview folded classes and functions docstrings
" let g:SimpylFold_docstring_preview = 1
" don't fold docstring
" let g:SimpylFold_fold_docstring = 0

set clipboard+=unnamedplus

" set laststatus=2            " show the satus line all the time
"set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
"set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
"set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
"set scrolloff=3             " lines of text around cursor
"set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

if has('mouse')
	" Putting r instead of a allows to select and copy/paste
	set mouse=r
	" set ttymouse=xterm2
endif

" replace currently selected text with default register
" without yanking it
vnoremap p "_dP

" Disable arrow keys to break bad habit

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
" Use <BS> so it works on neovim
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" CtrlP

set runtimepath^=~/dotfiles/config/nvim/ctrlp.vim

" Make p put stuff in a blackhole registry so I can paste stuff several times
vnoremap <leader>p "_dP

"i" }}}
