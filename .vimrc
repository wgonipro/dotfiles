let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
" color theme iceberg
Plug 'cocopon/iceberg.vim'

" airline for better experience
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-go
Plug 'fatih/vim-go'

" github plug
Plug 'tpope/vim-fugitive'

" git diff
Plug 'airblade/vim-gitgutter'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERDTree
Plug 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call plug#end()            " required

" Put your non-Plugin stuff after this line
let g:airline_theme='iceberg'
let g:airline#extensions#tabline#enabled = 1

" disable all linters as that is taken care by coc
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" Non-Plugin Attributes
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set updatetime=100
set splitright


set showcmd
set nu
set ruler
syn on

au BufRead,BufNewFile *.txt syntax match StrikeoutMatch /\~\~.*\~\~/
hi def StrikeoutColor ctermbg=black ctermfg=grey guibg=darkblue guifg=blue
hi link StrikeoutMatch StrikeoutColor

" color scheme
colo iceberg

" copilot - linux / mac
" git clone https://github.com/github/copilot.vim.git \
"  ~/.vim/pack/github/start/copilot.vim

" :Copilot setup
