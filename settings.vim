filetype off
set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

syntax enable                           " Enables syntax highlighing
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Shows line numbers
set relativenumber                      " Show relative line numbers
set clipboard+=unnamedplus              " Copy paste between vim and everything else
set incsearch
set hidden
set path+=**							" Type gf over any file to open it

" Syncs windows clipboard with neovim on wsl
if has('wsl')
	let g:clipboard = {
			  \   'name': 'WslClipboard',
			  \   'copy': {
			  \      '+': 'win32yank.exe -i --crlf',
			  \      '*': 'win32yank.exe -i --crlf',
			  \    },
			  \   'paste': {
			  \      '+': 'win32yank.exe -o --lf',
			  \      '*': 'win32yank.exe -o --lf',
			  \   },
			  \   'cache_enabled': 0,
			  \ }
endif