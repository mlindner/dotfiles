" vim-plug Plugins
call plug#begin()
Plug 'iCyMind/NeoSolarized'    " Colorscheme
Plug 'vim-airline/vim-airline' " Better bottom bar
Plug 'mhinz/vim-signify'       " Version control
Plug 'w0rp/ale'                " Linter
Plug 'luochen1990/rainbow'     " Rainbow parens
call plug#end()

" Enable rainbow parens
let g:rainbow_active = 1

" Disable ALE because I can't get it to work
let g:ale_enabled = 0

" Turn on mouse support
set mouse=a


" Show hidden characters
set listchars=tab:›\ ,trail:•,extends:#,nbsp:%
set list

" Don't wrap lines
set nowrap

" Keep undo history file
set undofile


colorscheme NeoSolarized
set background=dark
set termguicolors

" Spaces & Tabs
set tabstop=8       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
"set copyindent      " copy indent from the previous line

" Line numbers
set number

" Clipboard
set clipboard+=unnamedplus

" Always switch to the current file directory
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" Look into using pi_netrw https://neovim.io/doc/user/pi_netrw.html

" Load local nvimrc files
set exrc
set secure

