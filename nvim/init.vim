let s:dein_path = expand('~/.vim/dein')

" dein Scripts-----------------------------------------------
if &compatible
	set nocompatible
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Let dein mange itself
if dein#load_state(s:dein_path)
	" Required:
	call dein#begin(s:dein_path)

	" Add or remove your plugins here:
	call dein#add('Shougo/dein.vim')
	call dein#add('scrooloose/nerdtree')
	call dein#add('mattn/emmet-vim')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Install uninstalled plugins on startup
if dein#check_install()
	call dein#install()
endif

" Required:
filetype plugin indent on
" End dein Scripts-------------------------------------------

syntax enable

" Configure emmet-vim
" set trigger key
let g:user_emmet_leader_key='<C-e>'

" display line number
set number

" display ^ for tabs, ~ for trailing spaces
set list
set listchars=tab:^\ ,trail:~

" Number of spaces a tab in the file counts for
set tabstop=2

" Number of spaces to use for each step if (auto)indent
set shiftwidth=2

" insert whitespaces instead of tab
set expandtab
