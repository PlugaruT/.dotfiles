set nocompatible           

" enable filetype-specific indenting
filetype indent on

" enable filetype-specific plugins
filetype plugin on   

" enable filetype detection
filetype on

" enable syntax highlighting
syntax enable

" show line numbers
set number 

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" show a visual line under the cursor's current line 
set cursorline

" indent when moving to the next line while writing code
set autoindent

" visual autocomplete for command menus
set wildmenu

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Status line enable
set laststatus=2

" Open NERDTree automatically when vim starts
" autocmd vimenter * NERDTree 

" Open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Solarized configurations
set t_Co=16
let g:solarized_termcolors=   16
let g:solarized_termtrans =   0
let g:solarized_degrade   =   0
let g:solarized_bold      =   1
let g:solarized_underline =   1
let g:solarized_italic    =   1
let g:solarized_contrast  =   "normal"
let g:solarized_visibility=   "normal"
" enable all Python syntax highlighting features
let python_highlight_all = 1
set background=dark
colorscheme solarized
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Rails support
Plugin 'tpope/vim-rails'

" Ruby support
Plugin 'vim-ruby/vim-ruby'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'

" NerdTree plugin
Plugin 'scrooloose/nerdtree'

" Git status for files
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Integration with git
Plugin 'airblade/vim-gitgutter'

" Autocomplete plugin
Plugin 'Valloric/YouCompleteMe'

" HTM5 support for vim
Plugin 'othree/html5.vim'

" JS syntax and indent plugin
Plugin 'pangloss/vim-javascript'

" Status bar
Plugin 'bling/vim-airline'

" Code snippents
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
let g:airline_powerline_fonts = 1
