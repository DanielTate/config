" @TODO
" Find a better color scheme
" Find intelisense plugin
" Powerline?
" Terminal
" One button commenting blocks
filetype indent on

" Required
set nocompatible

" Set line numbers
set number

" Set line limiter
set colorcolumn=100

" Enable more terminal terminal colors
set termguicolors
set t_co=256

" Enable middle click pasting from vim clipboard
set clipboard+=unnamedplus

" Prevent autosave issues with open files
set nobackup
set nowb
set noswapfile 
" Make tab 4 spaces
set shiftwidth=4
set tabstop=4
set smartindent
set smarttab 
set nowrap


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Smart way to manage tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap tm :tabmove<CR>
nnoremap to :tabonly<CR>

" Filetype is handled by other plugins 
" Basic syntax highlighting
syntax on

" Using vim-plug
" https://github.com/junegunn/vim-plug 
" Specify a directory for plugins
call plug#begin('~/.nvim/plugged')

" Cosmetic
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'ryanoasis/vim-devicons' " Nice icons
Plug 'tomasr/molokai' " Color scheme 
Plug 'nathanaelkane/vim-indent-guides'
" @TODO Fix 
Plug 'norcalli/nvim-colorizer.lua' " Highlight hex codes

" Functional
" @TODO - Setup
" Plug 'dense-analysis/ale' " Real time linting 
Plug 'mattn/emmet-vim' " fast code snippits
Plug 'Yggdroot/LeaderF', {'do': './install.sh'} " fuzzy finder
Plug 'junegunn/vim-easy-align' " Easey indenting shortcuts   
Plug 'preservim/nerdtree' " Side bar
Plug 'sheerun/vim-polyglot' " Syntax highlighting
Plug 'alexlafroscia/postcss-syntax.vim' " Syntax highlighting
Plug 'othree/html5-syntax.vim'
Plug 'phalkunz/vim-ss'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()


" Vim-airline-theme 
let g:airline_theme='simple'
let g:airline_powerline_fonts=1

" Set indent highlighting on startup
let g:indent_guides_enable_on_vim_startup=1

" Set pop up mode for LeaderF
let g:Lf_WindowPosition='popup'
let g:Lf_PreviewInPopup=1 

" Color scheme 
colorscheme molokai

autocmd BufNewFile,BufRead *.ss set syntax=html

" Key bindings

" Nerd Tree ( sidebar ) toggle
map <C-t> :NERDTreeToggle<CR> 

" Fuzzy finder toggle
map <C-p> :Leaderf file<CR>

" Clear search 
map <C-S> :noh<CR>
