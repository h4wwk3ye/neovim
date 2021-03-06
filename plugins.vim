" vim plug "
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

	" Repeat stuff
    Plug 'tpope/vim-repeat'
	" Text Navigation
    Plug 'unblevable/quick-scope'
	
	if exists('g:vscode')
		" Easy motion for VSCode
		" Plug 'asvetliakov/vim-easymotion'
		Plug 'ChristianChiarulli/vscode-easymotion'
		Plug 'machakann/vim-highlightedyank'
	endif
	
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
  
