set encoding=utf-8
set nocompatible              " be iMproved, required
set number
set laststatus=2
set noswapfile
set autowriteall
set hidden
set showcmd
set rtp+=~/.vim/bundle/Vundle.vim
set expandtab
set pastetoggle=<F2>
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldlevel=99
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set mouse=a
set t_Co=256
set t_ut=
set clipboard=unnamed
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set lazyredraw
set showmatch
au VimResized * :wincmd =
set ttyfast
set ruler

highlight BadWhitespace ctermbg=red guibg=red

" L A N G U A G E S
" =================
"
" C
au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile *.c,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set autoindent
au BufRead,BufNewFile *.c,*.h match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
au         BufNewFile *.c,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '


" Java
au BufRead,BufNewFile *.java set expandtab
au BufRead,BufNewFile *.java set tabstop=4
au BufRead,BufNewFile *.java set shiftwidth=4
au BufRead,BufNewFile *.java set autoindent
au BufRead,BufNewFile *.java match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.java match BadWhitespace /\s\+$/
au         BufNewFile *.java set fileformat=unix
au BufRead,BufNewFile *.java let b:comment_leader = '//'


" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'


" JS
au BufRead,BufNewFile *.js set expandtab
au BufRead,BufNewFile *.js set tabstop=4
au BufRead,BufNewFile *.js set softtabstop=4
au BufRead,BufNewFile *.js set shiftwidth=4
au BufRead,BufNewFile *.js set autoindent
au BufRead,BufNewFile *.js match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.js match BadWhitespace /\s\+$/
au         BufNewFile *.js set fileformat=unix
au BufRead,BufNewFile *.js let b:comment_leader = '//'


" Makefile
au BufRead,BufNewFile Makefile* set noexpandtab


" XML
au BufRead,BufNewFile *.xml set expandtab
au BufRead,BufNewFile *.xml set tabstop=4
au BufRead,BufNewFile *.xml set softtabstop=4
au BufRead,BufNewFile *.xml set shiftwidth=4
au BufRead,BufNewFile *.xml set autoindent
au BufRead,BufNewFile *.xml match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.xml match BadWhitespace /\s\+$/
au         BufNewFile *.xml set fileformat=unix
au BufRead,BufNewFile *.xml let b:comment_leader = '<!--'


" HTML
au BufRead,BufNewFile *.html set filetype=xml
au BufRead,BufNewFile *.html set expandtab
au BufRead,BufNewFile *.html set tabstop=4
au BufRead,BufNewFile *.html set softtabstop=4
au BufRead,BufNewFile *.html set shiftwidth=4
au BufRead,BufNewFile *.html set autoindent
au BufRead,BufNewFile *.html match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.html match BadWhitespace /\s\+$/
au         BufNewFile *.html set fileformat=unix
au BufRead,BufNewFile *.html let b:comment_leader = '<!--'


filetype off                  " required
syntax enable
"set the runtime path to include Vundle and initialize
call vundle#begin()
autocmd FileType python setlocal completeopt-=preview
filetype indent on      " load filetype-specific indent files
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ervandew/ag'
Plugin  'dyng/ctrlsf.vim'
Plugin 'sjl/splice.vim'
Plugin 'sjl/badwolf'
Plugin 'endel/vim-github-colorscheme'
Plugin 'Shougo/neocomplete.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'sophacles/vim-bundle-mako'
Plugin 'woju/vim-colors-woju'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-sensible'
Plugin 'fatih/vim-go'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'wting/rust.vim'
" Default
let g:clojure_maxlines = 100

let g:ackprg = 'ag --vimgrep'
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nnoremap <F4> :bn<CR>
nnoremap <F3> :bp<CR>
nnoremap <space> za
let g:jedi#popup_on_dot = 0
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let g:ackprg = 'ag --vimgrep'
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nnoremap <F4> :bn<CR>
nnoremap <F3> :bp<CR>
nnoremap <space> za
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
inoremap <c-D> <esc>yyp
inoremap <c-j> <esc>ddpi
inoremap <c-k> <esc>ddkkpi
noremap <F5> :set invnumber<CR>

" Go related mappings
 au FileType go nmap <Leader>i <Plug>(go-info)
 au FileType go nmap <Leader>gd <Plug>(go-doc)
 au FileType go nmap <Leader>r <Plug>(go-run)
 au FileType go nmap <Leader>b <Plug>(go-build)
 au FileType go nmap <Leader>t <Plug>(go-test)
 au FileType go nmap gd <Plug>(go-def-tab)



" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv


" Inserting blank lines
nnoremap <cr> o<esc>

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

call vundle#end()            " required
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


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let python_highlight_all=1


let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


let g:syntastic_loc_list_height=5
colorscheme badwolf
"colorscheme github
"set background=light
"colorscheme hemisu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" }}}
" " Line Return {{{
"
" " Make sure Vim returns to the same line when you reopen a file.
" " Thanks, Amit
 augroup line_return
     au!
         au BufReadPost *
                 \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

iabbrev ldis ಠ_ಠ
iabbrev lsad ಥ_ಥ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
iabbrev ipdb import ipdb; ipdb.set_trace()
iabbrev tj Thomas Junk
iabbrev tj@ lilith2k7@gmail.com

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
