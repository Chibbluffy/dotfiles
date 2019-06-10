set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
syntax on
filetype plugin indent on

au BufNewFile,BufRead *.sux set filetype=javascript

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || $TERM == "konsole"
	set t_CO=256
endif

:nmap \e :NERDTreeToggle<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softstabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

:set background=light

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set number
:set relativenumber
:set nocompatible

:set splitbelow
:set splitright

:set mouse=a

:set colorcolumn=80

:imap jj <Esc>
:imap jk <Esc>

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_opertions = "-std=c++11 -Wall -Wextra -Wpedantic"

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts   :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
