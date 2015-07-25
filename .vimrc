set nocompatible             
filetype off
" enable syntax highlighting
syntax enable

" show line numbers
set number 

"set tabs to have 2 spaces
set ts=2

"indent when moving to the next line while writing code
set autoindent

"show a visual line under the cursor's current line 
set showmatch

" highlight current line
set cursorline

" visual autocomplete for command menus
set wildmenu

" highlight matching [{()}]
set showmatch

" Open NERDTree automatically when vim starts
" autocmd vimenter * NERDTree 

" Open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" enable all Python syntax highlighting features
let python_highlight_all = 1
set background=dark
colorscheme solarized
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Rails support
Plugin 'tpope/vim-rails'

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

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
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
" Put your non-Plugin stuff after this line
