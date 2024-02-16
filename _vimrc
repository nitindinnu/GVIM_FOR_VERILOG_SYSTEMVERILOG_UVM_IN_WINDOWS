set clipboard=unnamed  "clipboard access
syn on  "syntax  highlight
syntax enable "syntax highlight
se nu " Enable line numbers
set guifont=Consolas:h13 "font preference
au GUIEnter * simalt ~x "open full screen windows

" ///////////////// Enable auto-indentation
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set wrap
"//////////////////

set backspace=indent,eol,start "make backspace work
set autochdir "directory cmnd
set tabpagemax=100 "can use : [ gvim -p * ] to open group of files at once
set showmatch " Enable matching parentheses highlighting

" ////////////Enable auto-completion using Tab
set wildmenu
"set wildmode=list:longest
"set wildoptions=pu
"/////////////

" ///////// Enable folding
set foldmethod=syntax
set foldlevelstart=99
"///////////

" //// Configure custom mappings
map <F5> :wa!<CR>
" //// Example: Map F5 to save the file


autocmd BufNewFile,BufRead *.v,*.vs,*.vh,*.do, set syntax=verilog 
autocmd BufRead,BufNewFile *.sv,*.svh,*.log, set syntax=systemverilog
set hlsearch
augroup Systemverilog
    autocmd!
    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete foldmethod=indent
augroup END
set nobackup nowritebackup noswapfile
set showcmd
colorscheme desert
set ruler
" Use CTRL-S for saving, also in Insert mode
"nnoremap <C-S> :update<cr>
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
imap <C-x> "+x
imap <C-c> "+y
vnoremap <C-x> "+x
vnoremap <C-c> "+y
noremap <C-x> "+x
noremap <C-c> "+y
"imap <C-p> "+gP
"map <C-s>:w!<CR>
"map <C-x>"+x"+gP
"map <C-c>"+y