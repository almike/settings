set t_Co=256
color jellybeans
set tabstop=4
set shiftwidth=4
set nu
set hlsearch
set smartcase
highlight LineNr ctermfg=7 ctermbg=8
set backupdir=/tmp/
set directory=/tmp/
set autoread
au CursorHold * checktime
set autoindent
imap jj <Esc>
autocmd CursorMoved * exe printf('match DiffChange /\V\<%s\>/', escape(expand('<cword>'), '/\'))
":so $VIMRUNTIME/syntax/hitest.vim
execute pathogen#infect()
"sudo npm install -g jshint
com -nargs=* F call F(<f-args>)
set wildignore+=public/**,solr/**,tmp/**
function F(...)
	exe 'lvim /'.join(a:000).'/gj **'
	vertical lw
	winc =
endfunction
nmap :E :e **/
nmap :T :tabedit **/
nmap :W :wa<Enter>
