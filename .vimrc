syntax enable
color jellybeans
set backupdir=/tmp/
set directory=/tmp/
set laststatus=2
set shiftwidth=2
set tabstop=2
set t_Co=256
set so=16
set nu
set hlsearch
set smartcase
set autoread
set autoindent
set binary
set noeol
set nowrap
set list
set lazyredraw
set backspace=indent,eol,start
set wildignore+=public/**,tmp/**,node_modules/**,coverage/**,target/**
set wildignore+=**/public/**,**/tmp/**,**/node_modules/**,**/coverage/**,**/target/**
let g:indent_guides_enable_on_vim_startup = 1
let g:ctrlp_max_files=0
execute pathogen#infect()
"sudo npm install -g jshint
map <C-N> :cnext<enter>
map <C-M> :cprev<enter>
nmap :E :e **/
nmap :T :tabedit **/
nmap :W :wa<Enter>
imap jj <Esc>
hi IndentGuidesOdd ctermbg=234
hi IndentGuidesEven ctermbg=235
hi NonText ctermbg=none
hi Special ctermbg=none
hi SpecialKey ctermbg=none
hi LineNr ctermbg=none
hi Normal ctermbg=none
au BufNewFile,BufRead */mickael/rsa/* set expandtab
au BufNewFile,BufRead *.xea setlocal ft=javascript
au CursorHold * checktime
au CursorMoved * exe printf('match DiffChange /\V\<%s\>/', escape(expand('<cword>'), '/\'))