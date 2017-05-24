source ~/.vim/neobundle.vim
set wildmenu

" yank to clipboard
set clipboard=unnamed

set encoding=utf8

" vertical lines
 let g:indentLine_color_term = 239
 let g:indentLine_char = '|'

" gutter marks edits
 let g:gitgutter_max_signs = 1000

" color scheme
set t_Co=256
set term=xterm-256color
colorscheme iceberg
syntax on

" column width line
set colorcolumn=120

" line numbers
set relativenumber

" cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode(

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set expandtab
set backspace=indent,eol,start

" highlight trailing spaces
highlight TrailingWhitespace ctermbg=DarkGray guibg=DarkGray
au Syntax * syn match TrailingWhitespace /\s\+$/
match TrailingWhitespace /\s\+$/

" remove whitespace on save
au BufWritePre * :%s/\s\+$//e

" easymotion
let mapleader=","
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)

" std vim
set showcmd      "showcmd
set ignorecase   "ignore case on search
set hlsearch     "highlight search
set visualbell!  "disable visualbell!
set errorbells   "make sound

" rainbow paranthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}

" tablularize
nmap <Leader>a&      :Tabularize /&<CR>
vmap <Leader>a&      :Tabularize /&<CR>
nmap <Leader>a=      :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a=      :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=>     :Tabularize /=><CR>
vmap <Leader>a=>     :Tabularize /=><CR>
nmap <Leader>a:      :Tabularize /:<CR>
vmap <Leader>a:      :Tabularize /:<CR>
nmap <Leader>a::     :Tabularize /:\zs<CR>
vmap <Leader>a::     :Tabularize /:\zs<CR>
nmap <Leader>a,      :Tabularize /,<CR>
vmap <Leader>a,      :Tabularize /,<CR>
nmap <Leader>a,,     :Tabularize /,\zs<CR>
vmap <Leader>a,,     :Tabularize /,\zs<CR>
nmap <Leader>a<Bar>  :Tabularize /<Bar><CR>
vmap <Leader>a<Bar>  :Tabularize /<Bar><CR>

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='100,\"1000,:200,%,n~/.viminfo
autocmd FileType go setlocal shiftwidth=2 softtabstop=0 tabstop=2 noexpandtab
autocmd! CursorHoldI * :stopinsert
