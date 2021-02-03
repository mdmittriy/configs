" MAP the leader key to a space bar.
""let mapleader = "\<space>"
"Manage plugins with vim-plug.
call plug#begin()

    ""Plug 'tpope/vim-unimpaired'
    ""Plug 'sjl/gundo.vim'
    Plug 'https://github.com/tomasiser/vim-code-dark.git'
    Plug 'dpelle/vim-LanguageTool'
call plug#end()

syntax on " Enable syntax highlighting.
""filetype plugin indent on " Enable file type based indentation.
set autoindent " Respect indentation when starting a new line.
set expandtab " Expand tabs to spaces. Essential in Python.
set tabstop=4 "Number of spaces tab is counted for.
set shiftwidth=4 " Number of spaces to use for autoindent.
set backspace=indent,eol,start
""colorscheme vim-code-dark " Change a colorscheme
"colorscheme murphy " Change a colorscheme
colorscheme codedark

""packloadall " Load all plugins.
""silent! helptags ALL " Load help files for all plugins.

"set foldmethod=indent
""autocmd BufRead * normal zR  
" Auto runs a command zR (makes all indentation folded)

""autocmd BufWritePost .vimrc source %

set hlsearch "highlights searched stuff

"set clipboard=unnamedplus " Copy into system (+) register.

set number "displays #row on the right 

set showcmd "show inputted characters in the bottom-right corner

""noremap ; :

""nnoremap <c-s> :w<cr>

"Immediately add a closing quotes or braces in insert mode.
""inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

"Map <Ctrl-Space> to move one character ahead when in insert mode"
inoremap <C-@> <ESC>lA


""noremap <C-l> <C-w>l
""noremap <C-h> <C-w>h
""noremap <C-j> <C-w>j
""noremap <C-k> <C-w>k

""noremap <S-l> gt
""noremap <S-h> gT

""noremap <leader>q :q<cr>

" Search down into subfolders 
""Provides tab-completion for lal file related tasks"

"makes using :find command much easier and better"
set path+=**

"places all swap files to this folder"
set directory^=$HOME/.vim/tmp//

"map '[' to change a buffer"
nmap [ :w<CR>:bn<CR>

"reduce delay time"
set ttimeoutlen=50

"open vimrc"
nmap ] :w<CR>:n~/.vimrc<CR>

"set localleader to "\\""""
let maplocalleader = "\\"

nmap <localleader>] :w<CR>:bd<CR>

"make copy to the clipboard"
set clipboard=unnamedplus

"ignore search case"
set ic

""for fast python execution
inoremap <F9> <ESC>:w !python3<CR>
nmap <F9> :w !python3<CR>
""command R !./%
""autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
""autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"break words at the end of the line"
set linebreak


"language tool stuff"
let g:languagetool_jar='/home/dima/installed/languagetool/languagetool-standalone/target/LanguageTool-5.3-SNAPSHOT/LanguageTool-5.3-SNAPSHOT/languagetool-commandline.jar'
let g:languagetool_lang='en-US'

"dima sets html autocopletion"
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html abbrev </ </<C-X><C-O>

