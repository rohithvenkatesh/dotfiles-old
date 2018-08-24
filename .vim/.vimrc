" ====================== USE THIS FILE TO CUSTOMIZE VIM =================== "

"general style stuff"
syntax on "for the colorful text!
set number "this is for the line numbers
set relativenumber
set belloff=all "that annoying error noise

" for cool indentation "
set smartindent
set tabstop=4
set shiftwidth=4
set list lcs=tab:\|\ "gives us the place of indent with |


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
	Plug 'wikitopian/hardmode' "HardMode
		autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode() "autoenables HardMode
	Plug 'unblevable/quick-scope' " characterstic letter for f,F,t,T
	Plug 'itchyny/lightline.vim' "for cool bottom part
		set laststatus=2 "for it to actually show
		set noshowmode "to disable --INSERT-- and --NORMAL-- at the bottom
	Plug 'jiangmiao/auto-pairs' "for matching braces
	Plug 'haya14busa/incsearch.vim' "for incremental searching
		map /  <Plug>(incsearch-forward)
		map ?  <Plug>(incsearch-backward)
		map g/ <Plug>(incsearch-stay)
call plug#end() "end of plug

