"""""""""""""""
""" Setting """
"""""""""""""""


set nocompatible                  " Changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

"set cursorline                    "add line highlight for cursor
"set cursorline
"autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
"autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
"set ruler                         " Show cursor position.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " Case-sensitive if it contains a capital.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set nobackup                      " Don't backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//  " Keep swap files in one location.

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs.

set visualbell t_vb=  "turn off flashing when top/bottom of file is reached 

set fileformats=unix
execute pathogen#infect()
set laststatus=2
set statusline +=%{fugitive#statusline()}
set statusline+=%f                " Path to the file
set statusline+=\ -\              " Separator
set statusline+=FileType:         " Label
set statusline+=%y                " Filetype of the file
set statusline+=%l                " Current line
set statusline+=/                 " Separator
set statusline+=%L                " Total lines
""""""""""""
""" Keys """
""""""""""""
"add search clear option
map <Space> :noh<cr>
"set comment highlighting
hi Comment    cterm=bold ctermfg=black ctermbg=yellow    gui=NONE guifg=blue

let mapleader=","
"set appropriate column marker, for style purposes
set colorcolumn=81
"switch between tabs using shift-h, and shift-l
nnoremap <S-h> gT
nnoremap <S-l> gt

autocmd Filetype ruby source ~/.Vim/ruby-macros.vim
autocmd BufRead,BufNewFile *.mpdv    set filetype=mpdv

command Reqm :normal irequire 'minitest/autorun<ESC>
command Rr :normal iRequire relative ' <ESC>

map <C-n> :NERDTreeToggle<CR>

"xmpfilter stuff

nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
xmap <buffer> <F5> <Plug>(seeing-is-believing-run)
imap <buffer> <F5> <Plug>(seeing-is-believing-run)

nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

"automatically load ctags on file write
"autocmd BufWritePost * call system("ctags -R")

set runtimepath+=/Users/tim/mpd_plugin
set runtimepath+=/Users/tim/mpd_plugin/mpc

au BufRead,BufNewFile *.ino set filetype=c
