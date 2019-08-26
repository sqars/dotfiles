call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx'
Plug 'dikiaap/minimalist'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug '/usr/local/opt/fzf'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
"nertdtree
set rtp+=~/.vim/bundle/nerdtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
"theme
syntax enable
colorscheme monokai
"fzf
map ; :Files<CR>
"line numbers
set number
"prettier
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#arrow_parens = 'avoid'
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
"search
set hls
set is
set ignorecase
set smartcase
nnoremap <CR> :noh<CR><CR>
let g:ackprg = 'ag --vimgrep'
"cursor options
set scrolloff=5
set cursorline
set colorcolumn=180
"disable backup
set nowritebackup
set noswapfile
set nobackup
"show commands
set showcmd
"show command suggestions
set wildmenu
"linebreak
set lbr
"indentation
set ai "auto indent"
set si "smart indent"
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
