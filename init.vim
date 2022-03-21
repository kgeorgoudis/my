" Options
set nocompatible
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set inccommand=split " Show replacements in a split screen
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior:q
set title " Show file title
set wildmenu " Show a more advance menu
set expandtab
set shiftwidth=4
set tabstop=4 softtabstop=4
"set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set nowrap
set smartcase
set smartindent
set noerrorbells
set expandtab
set hlsearch
filetype plugin indent on   " Allow auto-indenting depending on file type
filetype off
syntax on
set ttyfast " Speed up scrolling in Vim

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kassio/neoterm'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

colorscheme gruvbox
let g:blamer_enabled = 1
let g:blamer_delay = 500

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-`> :Topen<CR>

" Golang block
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports -w=true"
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
