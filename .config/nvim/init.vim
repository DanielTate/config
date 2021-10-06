filetype indent on

set colorcolumn=100
set clipboard+=unnamedplus
set number relativenumber
set nobackup
set nowb
set noswapfile 
set nowrap
set termguicolors
set shiftwidth=4
set tabstop=4
set smartindent
set smarttab 
set nocompatible
set t_co=256

" Set leader key
let g:mapleader=" "

" https://github.com/junegunn/vim-plug 
call plug#begin('~/.nvim/plugged')

" Cosmetic
" Plug 'vim-airline/vim-airline' 			" Status bar
" Plug 'vim-airline/vim-airline-themes' 	" Status bar themes
Plug 'glepnir/galaxyline.nvim'
Plug 'ryanoasis/vim-devicons' 			" Nice icons
Plug 'tomasr/molokai' 					" Color scheme 
Plug 'nathanaelkane/vim-indent-guides'  " Indent guides 

" Functional
" Plug 'mattn/emmet-vim' 							" fast code snippits
Plug 'Yggdroot/LeaderF', {'do': './install.sh'} 	" fuzzy finder
Plug 'junegunn/vim-easy-align' 						" Easy indenting shortcuts   
" Plug 'preservim/nerdtree' 						" Side bar
Plug 'phalkunz/vim-ss'								" Siverstripe plugin - Am I using any of these features? 
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter-textobjects'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" @TODO - Setup
"
" Plug 'norcalli/nvim-colorizer.lua' " Highlight hex codes
" Plug tpope/vim-ragtag
" Plug tpope/vim-surround
" Plug tpope/vim-uninpaired
" Plug 'tpope/vim-fugitive'
" DEP Plug 'dense-analysis/ale' " Real time linting 
" DEP Plug 'sheerun/vim-polyglot' " Syntax highlighting
" DEP Plug 'alexlafroscia/postcss-syntax.vim' " Syntax highlighting
" DEP Plug 'othree/html5-syntax.vim'

call plug#end()

" >> Telescope bindings
nnoremap <Leader>pp <cmd>lua require'telescope.builtin'.builtin{}<CR>

" most recently used files
nnoremap <Leader>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <Leader>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <Leader>' <cmd>lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <Leader>bfs <cmd>lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <Leader>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <Leader>cs <cmd>lua require'telescope.builtin'.colorscheme{}<CR>


" Do I need this
" >> setup nerdcomment key bindings
" let g:NERDCreateDefaultMappings = 0
" let g:NERDSpaceDelims = 1
" xnoremap <Leader>ci <cmd>call NERDComment('n', 'toggle')<CR>
" nnoremap <Leader>ci <cmd>call NERDComment('n', 'toggle')<CR>

" @TODO Fix this
" >> Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
nnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
-- require("completion")
EOF

" Move between windows 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move between tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap tm :tabmove<CR>
nnoremap to :tabonly<CR>

" Basic syntax highlighting
syntax on

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

" Set .ss files to use .html syntax highlighting
autocmd BufNewFile,BufRead *.ss set syntax=html

" Key bindings

" Nerd Tree ( sidebar ) toggle
map <C-t> :NERDTreeToggle<CR> 

" Fuzzy finder toggle
map <C-p> :Leaderf file<CR>

" Clear search 
map <C-S> :noh<CR>

" @TODO
" Find a better color scheme
" Find intelisense plugin --> nvim lsp
" Terminal
" One button commenting blocks
"
