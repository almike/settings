#!/bin/bash
root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for file in vimrc vim; do
	rm -fr ~/.$file
	ln -s $root/.$file ~/.$file
done
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone git@github.com:scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone git@github.com:vim-airline/vim-airline.git ~/.vim/bundle/airline
git clone git@github.com:rking/ag.vim.git ~/.vim/bundle/ag
git clone git@github.com:ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp
git config --global core.editor "vim"
git config --global push.default simple
npm config set loglevel silent
echo "do: git config --global user.email/name"
