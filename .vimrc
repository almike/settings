syntax enable
color jellybeans
set t_Co=256
set tabstop=4
set shiftwidth=4
set so=16
set nu
set hlsearch
set smartcase
set backupdir=/tmp/
set directory=/tmp/
set autoread
set autoindent
set wildignore+=public/**,solr/**,tmp/**,app/assets/images/**,app/assets/javascripts/plugins/**,app/assets/stylesheets/plugins/**,node_modules/**,transient/**
imap jj <Esc>
au CursorHold * checktime
au CursorMoved * exe printf('match DiffChange /\V\<%s\>/', escape(expand('<cword>'), '/\'))
":so $VIMRUNTIME/syntax/hitest.vim
execute pathogen#infect()
"sudo npm install -g jshint
com -nargs=* F call F(<f-args>)
function F(...)
	exe 'lvim /'.join(a:000).'/gj **'
	vertical lw
	winc =
endfunction
map <F3> :lnext<enter>
nmap :E :e **/
nmap :T :tabedit **/
nmap :S :sp **/
nmap :V :vsp **/
nmap :W :wa<Enter>
set binary
set noeol
set list
au BufNewFile,BufRead *.xea setlocal ft=javascript
set laststatus=2
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd ctermbg=234
hi IndentGuidesEven ctermbg=235
hi NonText ctermbg=none
hi Special ctermbg=none
hi SpecialKey ctermbg=none
hi LineNr ctermbg=none
hi Normal ctermbg=none