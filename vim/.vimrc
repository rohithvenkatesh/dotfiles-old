" ====================== USE THIS FILE TO CUSTOMIZE VIM =================== "

" color stuff "
	colorscheme neodark
	let g:neodark#terminal_transparent = 1
	let g:neodark#solid_vertsplit = 1

" for italics "
	let &t_ZH="\e[3m"
	let &t_ZR="\e[23m"
	highlight Comment cterm=italic

" general style stuff "
	syntax on "for the colorful text!
	set number belloff=all

" to make prose writing easier "
	map j gj
	map k gk
	set nolist linebreak tw=0 fo=cqt wm=1

" for cool indentation "
	set smartindent tabstop=4 shiftwidth=4

" maps 0 to first nonwhitespace char and ^ to first char in line "
	noremap 0 ^
	noremap ^ 0

"merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
"----------vim-plug------------"
" :PlugInstall, :PlugUpdate, :PlugClean, :PlugStatus, :PlugUpgrade
	call plug#begin('~/.vim/plugged') "beginning of plug
		Plug 'unblevable/quick-scope' " characterstic letter for f,F,t,T
		Plug 'junegunn/goyo.vim' " a simpler vim
		Plug 'jiangmiao/auto-pairs' "for matching braces
		Plug 'haya14busa/incsearch.vim' "for incremental searching
			map /  <Plug>(incsearch-forward)
			map ?  <Plug>(incsearch-backward)
			map g/ <Plug>(incsearch-stay)
	call plug#end() "end of plug

filetype plugin indent on
