set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" File icons for nerdtree
Plugin 'ryanoasis/vim-devicons'


" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'fugitive.vim'

" Plugin 'vim-syntastic/syntastic'

Plugin 'altercation/vim-colors-solarized'

Plugin 'sjl/gundo.vim'

Plugin 'powerline/powerline'

Plugin 'Gundo'

Plugin 'sickill/vim-monokai'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'tmhedberg/matchit'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'

Plugin 'Syntastic'
Plugin 'nathanaelkane/vim-indent-guides'

" Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

Plugin 'elzr/vim-json'

Plugin 'tmhedberg/SimpylFold'

" Plugin 'vim-scripts/indentpython.vim'

Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'jiangmiao/auto-pairs'

" super searching
" Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'Vimjas/vim-python-pep8-indent'

" Plugin 'plytophogy/vim-virtualenv'

Plugin 'posva/vim-vue'

Plugin 'pangloss/vim-javascript'

" Plugin 'mxw/vim-jsx'

Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'genoma/vim-less'

" Plugin that converts vim to a python ide
" Plugin 'python-mode/python-mode'

Plugin 'leafgarland/typescript-vim'

Plugin 'scrooloose/nerdcommenter'

" command line fuzzy finder
Plugin 'junegunn/fzf'

" prettier for vim
Plugin 'prettier/vim-prettier'

" Now we can turn our filetype functionality back on
filetype plugin indent on


" Powerline configuration
" set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256
"

let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules', 'venv', 'env'] "ignore files in NERDTree

" monokai theme
syntax enable
colorscheme monokai

" side pane navigation
nnoremap <C-t> :NERDTreeToggle<CR>

" key mappings for navigating btn split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <lt> <C-W><lt>
nnoremap > <C-W>>
nnoremap - <C-W>-
nnoremap + <C-W>+

" some convenient settings
let mapleader="-"
setlocal textwidth=80
set nu
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>


"let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
let g:syntastic_python_checkers = ['flake8']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" let g:syntastic_json_checker=['jsonlint']

" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" enable indent markings
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Autocompletion settings for python using jedi-vim
let g:jedi#popup_on_dot = 1
let g:jedi#completions_command = "<C-N>"
let g:jedi#use_tabs_not_buffers = 1
set completeopt-=preview

set autoread

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Add PEP8 indentation (python)
 au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Set different settings for js, html, css files
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set encoding=utf-8

let python_highlight_all=1
syntax on

" swicth sheme based on vim mode
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" swicth easily between dark and light theme
call togglebg#map("<F5>")

set clipboard=unnamed

" set python-mode to use python3
" let g:pymode_python = 'python3'

" set javascript indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" set html indent
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" set html indent
autocmd FileType vue setlocal shiftwidth=2 tabstop=2

" set html autocomplete
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" abbreviation to complete html tags
" iabbrev </ </<C-X><C-O>
inoremap <lt>/ </<C-x><C-o><Esc>==gi

" let g:vue_disable_pre_processors=1

" React Config
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" settings for devicons
set encoding=utf8

set guifont=DroidSansMono\ Nerd\ Font\ 11

let g:airline_powerline_fonts = 1
