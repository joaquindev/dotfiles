" Get pathogen up and running
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

autocmd FileType javascript setl omnifunc=jscomplete#CompleteJS
set ruler
set number
set t_Co=256
colorscheme molokai 
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40


highlight NonText ctermfg=0

" imap <tab><tab> <c-x><c-o>
set mouse=a

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Don't show the current command int he lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" Enable search highlighting
set hlsearch

" Alright... let's try this out
imap ñ <esc>
cmap ñ <esc>
imap Ñ <esc>:
nmap Ñ <esc>:
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
set guifont=Source\ Code\ Pro\ regular:h1l8

"Mis pruebas
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap ˙ <left>
imap ∆ <down>
imap ˚ <up>
imap ¬ <right>



" Disable swap file and backup
set nobackup
set noswapfile

" Control + s will save the file
noremap <C-a> :w<CR>
" Control + q will quit the file
noremap <C-q> :q!<CR>
" Move lines up and down while holding control j or control k 
noremap <C-j> :m+<CR>
noremap <C-k> :m-2<CR>

map - <C-W>-
map + <C-W>+

" Don't run messdetector on save (default = 1)
" let g:phpqa_messdetector_autorun = 0
"
" " Don't run codesniffer on save (default = 1)
" let g:phpqa_codesniffer_autorun = 0
"
" " Show code coverage on load (default = 0)
" let g:phpqa_codecoverage_autorun = 1
" let g:phpqa_codecoverage_file = "build/log/clover.xml"

"Operators coloring in Vim 
:syn match Braces '[{}()\[\]]'
:hi Braces guifg=red

"Add spell checking and automatic wrapping at the recommended 72 columns to
"your comit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

"ignore Caps lock?
:inoremap <C-space> <esc>

" delete current word, insert and normal modes
"inoremap <C-BS> <C-O>b<C-O>dw
"noremap <C-BS> bdw
imap <C-BS> <C-W>






let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['gjslint']
let g:syntastic_javascript_gjslint_conf = ' --unix_mode --strict --nojsdoc ' 

let g:auto_save = 1

set pastetoggle=<F2>
" Different cursor for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set guifont=ProggyCleanTT\ 16


" =====================================================================
"  Initialize: {{{1
" set nocp
" if version >= 600
"   filetype plugin indent on
"   endif 

set encoding=utf-8
