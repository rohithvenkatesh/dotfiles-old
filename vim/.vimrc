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
	set number relativenumber belloff=all

" to make prose writing easier "
	map j gj
	map k gk
	set nolist linebreak tw=0 fo=cqt wm=1

" for cool indentation "
	set smartindent tabstop=4 shiftwidth=4

" maps 0 to first nonwhitespace char and ^ to first char in line "
	noremap 0 ^
	noremap ^ 0

"----------vim-plug------------"
" :PlugInstall, :PlugUpdate, :PlugClean, :PlugStatus, :PlugUpgrade
	call plug#begin('~/.vim/plugged') "beginning of plug
		Plug 'dart-lang/dart-vim-plugin' "Dart
		Plug 'https://github.com/scrooloose/nerdtree.git' "Nerdtree
			map <F1> :NERDTreeToggle<CR>
			let NERDTreeShowHidden=1
		Plug 'unblevable/quick-scope' " characterstic letter for f,F,t,T
		Plug 'junegunn/goyo.vim' " a simpler vim
		Plug 'jiangmiao/auto-pairs' "for matching braces
		Plug 'haya14busa/incsearch.vim' "for incremental searching
			map /  <Plug>(incsearch-forward)
			map ?  <Plug>(incsearch-backward)
			map g/ <Plug>(incsearch-stay)
		"Plug 'itchyny/lightline.vim' "for cool bottom part
	"		set laststatus=2 "for it to actually show
	"		set noshowmode "to disable --INSERT-- and --NORMAL-- at the bottom
	call plug#end() "end of plug
