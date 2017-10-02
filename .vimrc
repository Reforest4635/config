set nocompatible
filetype off


call plug#begin('~/.vim/plugged')
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet-snippets'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
call plug#end()


"neocomplete 
let g:neocomplete#enable_at_startup = 1
	"TAB autocomplete
	inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
	autocmd Filetype python setlocal omnifunc=pythoncomplete#Complete
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
filetype plugin indent on
set ruler
syntax enable
set relativenumber
set number
:imap jj <ESC>
