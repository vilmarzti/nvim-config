execute pathogen#infect()
execute pathogen#helptags()

set completeopt=menu    "test pymode thingtest pymode thingss"
set background=light    "don't burn my eyes
set textwidth=79        " lines longer than 79 columns will be broken
set shiftwidth=4        " operation >> indents 4 columns; << unindents 4 columns
set softtabstop=4       " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set tabstop=4           " a hard TAB displays as 4 columns
set t_Co=256

set expandtab     " insert spaces when hitting TABs
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set number		  " show linenumber
set hlsearch
set relativenumber " make linenumbers relative
set splitbelow    " more intuitive splits
set splitright    " more intuitive splits

let mapleader=","
syntax enable
filetype indent plugin on
filetype plugin on

let g:solarized_termcolors=256
let g:pymode=1
let g:pymode_syntax=1
let g:pymode_python= 'python3'

let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore="E127,E221,E272"
let g:ycm_global_ycm_extra_conf="~/.config/nvim/ycm_extra_conf.py"
let g:ycm_confirm_extra_conf=0
let g:haddock_browser = "open"
let g:vim_markdown_folding_disabled = 1

" Set colorscheme
colorscheme solarized

" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

map <C-n> :NERDTreeToggle<CR>
map <leader>c :10split +:terminal<CR>

tnoremap <Esc> <C-\><C-n>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <F9> :!%:p
inoremap jk <Esc>
