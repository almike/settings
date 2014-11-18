color jellybeans
set t_Co=256
set tabstop=4
set shiftwidth=4
set so=16
set list
set nu
set hlsearch
set smartcase
highlight LineNr ctermfg=7 ctermbg=8
set backupdir=/tmp/
set directory=/tmp/
set autoread
set autoindent
set wildignore+=public/**,solr/**,tmp/**,app/assets/images/**,app/assets/javascripts/plugins/**,app/assets/stylesheets/plugins/**
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
nmap :W :wa<Enter>
set binary
set noeol
