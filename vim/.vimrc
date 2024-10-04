" VIM Configuration - Caleb Dowdy
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim

set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins {{{ 
" set the runtime path to include Vundle and initialize
:set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerd Commenter
Plugin 'scrooloose/nerdcommenter'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

"Vim org mode 
Plugin 'jceb/vim-orgmode'

"Calendar req by org mode
Plugin 'mattn/calendar-vim'

"Required by org mode
Plugin 'tpope/vim-speeddating'

" Color scheme alduin
Plugin 'alessandroyorba/alduin'

" Julia plugin
Plugin 'JuliaEditorSupport/julia-vim'

" Javascript plugin 
Plugin 'pangloss/vim-javascript'

"Taglines
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'

" Universal Text Linking
Plugin 'vim-scripts/utl.vim'

" No distraction mode vim
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" Display {{{
set title     "Update the title of your window or your terminal
set number    "Display line numbers
set ruler     "Display cursor position
set wrap      "Wrap lines when they are too long
set scrolloff=3 " Display at least 3 lines around you cursor
                " (for scrolling)
set guioptions=T " Enable the toolbar

let g:alduin_Shout_Become_Ethereal = 1 " Color scheme specific
colorscheme alduin " Color scheme 

"Enable syntax highlighting
syntax enable

" Disable folding configuration
let g:vim_markdown_folding_disabled = 1

"Set fontsize
set guifont=Inconsolata\ 10

" Always show statusline
set laststatus=2

" Word wrap markdown files"
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown tw=80 fo+=t colorcolumn=80

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set modelines=1

" Purple Highlighting in Visual
hi Visual ctermbg=92

" Show exisitng tab with 4 spaces width
set tabstop=4

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" }}}

" Search {{{
set ignorecase "Ignore case when searching
set smartcase "If there is an uppercase in your search term
              "search case sensitive again
set incsearch "Highlight search results when typing
set hlsearch "Highlight search results
" }}}

" Beep {{{
set visualbell   " Prevent Vim from beeping
set noerrorbells " Prevent Vim from beeping
" }}}

" Misc {{{
" Backspace behaves as expected
set backspace=indent,eol,start

"Set Clipboard
set clipboard=unnamedplus

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Distraction free mode width
let g:goyo_width=95

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" }}} 

" Airline {{{
" Tag line
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts=1
let g:airline#extensions#ctrlp#color_template = 'visual'
let g:airline#extensions#ctrlp#color_template = 'replace'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

set rtp+=/home/caleb/anaconda3/lib/python3.5/site-packages/powerline/bindings/vim/
" }}}

" Custom Mapping {{{ 

" Date Key Map
map! <F3> <C-R>=strftime('%c')<CR>

" Comment line 
map! <F4> <C-R>='#--------------------------------------------------------------------#'<CR>

" }}}
						
" vim:foldmethod=marker:foldlevel=0
