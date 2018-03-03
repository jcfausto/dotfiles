call plug#begin('~/.vim/plugged') " Plug's Plugin directory

Plug 't9md/vim-ruby-xmpfilter'

call plug#end() " Initialize plugin system


set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoread

autocmd vimenter * NERDTree " Opens NERDTree when vim opens

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:xmpfilter_cmd = "seeing_is_believing"

" Seeing Is Belieing plugin settings
autocmd FileType ruby nmap <buffer> <F3> A # => <Esc>
autocmd FileType ruby xmap <buffer> <F3> A # => <Esc>
autocmd FileType ruby imap <buffer> <F3> A # => <Esc>

autocmd FileType ruby nmap <buffer> <F4> :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
autocmd FileType ruby xmap <buffer> <F4> :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
autocmd FileType ruby imap <buffer> <F4> :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;

autocmd FileType ruby nmap <buffer> <F5> :%.!seeing_is_believing <CR>;
autocmd FileType ruby xmap <buffer> <F5> :%.!seeing_is_believing <CR>;
autocmd FileType ruby imap <buffer> <F5> :%.!seeing_is_believing <CR>;

autocmd FileType ruby nmap <buffer> <F6> :%.!seeing_is_believing --clean<CR>;
autocmd FileType ruby xmap <buffer> <F6> :%.!seeing_is_believing --clean<CR>;
autocmd FileType ruby imap <buffer> <F6> :%.!seeing_is_believing --clean<CR>;

" End of SiB settings

execute pathogen#infect()
call pathogen#helptags()

let NERDTreeShowHidden=1
